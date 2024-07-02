#include <ros/ros.h>
#include <moveit/task_constructor/task.h>
#include <moveit/task_constructor/stages/current_state.h>
#include <moveit/task_constructor/stages/move_to.h>
#include <moveit/task_constructor/solvers/pipeline_planner.h>
#include <moveit/task_constructor/solvers/cartesian_path.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_msgs/CollisionObject.h>
#include <geometry_msgs/Pose.h>

static const ros::console::levels::Level LOGGER = ros::console::levels::Info;
namespace mtc = moveit::task_constructor;

class MTCTaskNode
{
public:
  MTCTaskNode();

  void doTask();
  void setupPlanningScene();

private:
  // Compose an MTC task from a series of stages.
  mtc::Task createTask();
  mtc::Task task_;
  ros::NodeHandle nh_;
};

MTCTaskNode::MTCTaskNode()
{
}

void MTCTaskNode::setupPlanningScene()
{
  moveit_msgs::CollisionObject object;
  object.id = "object";
  object.header.frame_id = "world";
  object.primitives.resize(1);
  object.primitives[0].type = shape_msgs::SolidPrimitive::CYLINDER;

  // Set the dimensions of the cylinder: [height, radius]
  object.primitives[0].dimensions = { 0.2, 0.05 };  // Increase height to 0.2 and radius to 0.05

  geometry_msgs::Pose pose;
  pose.position.x = -4.0;
  pose.position.y = -0.25;
  pose.orientation.w = 1.0;
  object.pose = pose;

  moveit::planning_interface::PlanningSceneInterface psi;
  psi.applyCollisionObject(object);
}

void MTCTaskNode::doTask()
{
  task_ = createTask();

  try
  {
    task_.init();
  }
  catch (mtc::InitStageException& e)
  {
    ROS_ERROR_STREAM(e.what());
    return;
  }

  if (!task_.plan(5))
  {
    ROS_ERROR("Task planning failed");
    return;
  }
  task_.introspection().publishSolution(*task_.solutions().front());

  auto result = task_.execute(*task_.solutions().front());
  if (result.val != moveit_msgs::MoveItErrorCodes::SUCCESS)
  {
    ROS_ERROR("Task execution failed");
    return;
  }

  return;
}

mtc::Task MTCTaskNode::createTask()
{
  mtc::Task task;
  task.stages()->setName("demo task");
  task.loadRobotModel("robot_description");

  const auto& arm_group_name = "manipulator";

  // Set task properties
  task.setProperty("group", arm_group_name);

  // Add the current state stage
  auto current_state = std::make_unique<mtc::stages::CurrentState>("current");
  task.add(std::move(current_state));

  // Define a move to stage
  auto sampling_planner = std::make_shared<mtc::solvers::PipelinePlanner>("ompl");
  auto move_to = std::make_unique<mtc::stages::MoveTo>("move to start", sampling_planner);
  move_to->setGroup(arm_group_name);
  move_to->setGoal("home");  // Ensure that this is a valid named target
  task.add(std::move(move_to));

  return task;
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "mtc_task_node");

  MTCTaskNode mtc_task_node;
  ros::AsyncSpinner spinner(2);  // Use 2 threads
  spinner.start();

  mtc_task_node.setupPlanningScene();
  mtc_task_node.doTask();

  ros::waitForShutdown();
  return 0;
}
