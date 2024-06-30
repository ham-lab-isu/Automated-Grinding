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
    const std::string ik_frame = "link6";  // IK frame link

    // Create Cartesian interpolation "planner" to be used in various stages
    auto cartesian_interpolation = std::make_shared<solvers::CartesianPath>();
    cartesian_interpolation->setProperty("max_velocity_scaling_factor", 0.1);  // Reduce speed if needed
    cartesian_interpolation->setProperty("max_acceleration_scaling_factor", 0.1);  // Reduce acceleration if needed
    cartesian_interpolation->setProperty("timeout", 300.0);  // Set a 60-second timeout
    cartesian_interpolation->setProperty("max_step", 0.0000001);  // Further reduce step size to get more steps

    // Create a joint-space interpolation "planner" to be used in various stages
    auto joint_interpolation = std::make_shared<solvers::JointInterpolationPlanner>();

    // Start from a fixed robot state
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
        auto stage = std::make_unique<stages::MoveRelative>("x -0.05", cartesian_interpolation);  // Adjust the distance
        stage->setGroup(group);
        geometry_msgs::Vector3Stamped direction;
        direction.header.frame_id = "world";  // Ensure frame matches your robot's base frame
        direction.vector.x = 0.000005;  // Move a smaller distance along the x-axis
        stage->setDirection(direction);
        stage->setIKFrame(ik_frame);  // Set the IK frame to the tip link of your manipulator
        stage->setProperty("min_fraction", 0.1);  // Allow partial success if 10% of the path is found
        t.add(std::move(stage));
    }

    {
        auto stage = std::make_unique<stages::MoveRelative>("y -0.03", cartesian_interpolation);  // Adjust the distance
        stage->setGroup(group);
        geometry_msgs::Vector3Stamped direction;
        direction.header.frame_id = "world";  // Ensure frame matches your robot's base frame
        direction.vector.y = 0.000005;  // Move a smaller distance along the x-axis
        stage->setDirection(direction);
        stage->setIKFrame(ik_frame);  // Set the IK frame to the tip link of your manipulator
        stage->setProperty("min_fraction", 0.1);  // Allow partial success if 10% of the path is found
        t.add(std::move(stage));
    }

    {  // rotate about TCP
		auto stage = std::make_unique<stages::MoveRelative>("rz +45°", cartesian_interpolation);
		stage->setGroup(group);
		geometry_msgs::TwistStamped twist;
		twist.header.frame_id = "world";
		twist.twist.angular.z = M_PI / .04;
		stage->setDirection(twist);
        stage->setIKFrame(ik_frame);  // Set the IK frame to the tip link of your manipulator
		t.add(std::move(stage));
	}

    {  // Move from reached state back to the original state, using joint interpolation
        stages::Connect::GroupPlannerVector planners = { { group, joint_interpolation } };
        auto connect = std::make_unique<stages::Connect>("connect", planners);
        t.add(std::move(connect));
    }

    {  // Final state is original state again
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

    ros::waitForShutdown();
    return 0;
}







