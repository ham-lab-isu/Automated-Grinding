#include <moveit/task_constructor/task.h>
#include <moveit/task_constructor/stages/fixed_state.h>
#include <moveit/task_constructor/solvers/cartesian_path.h>
#include <moveit/task_constructor/solvers/joint_interpolation.h>
#include <moveit/task_constructor/stages/move_to.h>
#include <moveit/task_constructor/stages/move_relative.h>
#include <moveit/task_constructor/stages/connect.h>

#include <ros/ros.h>
#include <moveit/planning_scene/planning_scene.h>

using namespace moveit::task_constructor;

Task createTask() {
    Task t;
    t.stages()->setName("Cartesian Path");

    const std::string group = "manipulator";  // Planning group name

    // create Cartesian interpolation "planner" to be used in various stages
    auto cartesian_interpolation = std::make_shared<solvers::CartesianPath>();
    cartesian_interpolation->setProperty("max_velocity_scaling_factor", 0.1); // Reduce speed if needed
    cartesian_interpolation->setProperty("max_acceleration_scaling_factor", 0.1); // Reduce acceleration if needed
    cartesian_interpolation->setProperty("timeout", 60.0);  // Set a 60-second timeout

    // create a joint-space interpolation "planner" to be used in various stages
    auto joint_interpolation = std::make_shared<solvers::JointInterpolationPlanner>();

    // start from a fixed robot state
    t.loadRobotModel();
    auto scene = std::make_shared<planning_scene::PlanningScene>(t.getRobotModel());
    {
        auto& state = scene->getCurrentStateNonConst();
        state.setToDefaultValues(state.getJointModelGroup(group), "home");  // Set to the 'home' state

        auto fixed = std::make_unique<stages::FixedState>("initial state");
        fixed->setState(scene);
        t.add(std::move(fixed));
    }

    {
        auto stage = std::make_unique<stages::MoveRelative>("x +0.005", cartesian_interpolation);  // Further reduce the distance
        stage->setGroup(group);
        geometry_msgs::Vector3Stamped direction;
        direction.header.frame_id = "base_link";  // Change frame to match your robot's base frame
        direction.vector.x = 0.005;  // Move an even smaller distance along the x-axis
        stage->setDirection(direction);
        stage->setIKFrame("link6");  // Set the IK frame to the tip link of your manipulator
        stage->setProperty("min_fraction", 0.01);  // Allow partial success if 1% of the path is found
        t.add(std::move(stage));
    }

    {  // move from reached state back to the original state, using joint interpolation
        stages::Connect::GroupPlannerVector planners = { { group, joint_interpolation } };
        auto connect = std::make_unique<stages::Connect>("connect", planners);
        t.add(std::move(connect));
    }

    {  // final state is original state again
        auto fixed = std::make_unique<stages::FixedState>("final state");
        fixed->setState(scene);
        t.add(std::move(fixed));
    }

    return t;
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "mtc_tutorial");
    ros::AsyncSpinner spinner(1);
    spinner.start();

    Task t = createTask();

    try {
        if (t.plan()) {
            ROS_INFO("Planning successful");
        } else {
            ROS_ERROR("Planning failed");
        }
    } catch (const std::exception& e) {
        ROS_ERROR_STREAM("Exception caught: " << e.what());
        return 1;
    }
	t.plan();
	t.plan();
	t.plan();
	t.plan();
	t.plan();
	t.plan();
	t.plan();
	t.plan();
	t.plan();
	t.plan();

    ros::waitForShutdown();
    return 0;
}

