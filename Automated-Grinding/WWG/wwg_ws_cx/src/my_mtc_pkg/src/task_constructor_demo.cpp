/*********************************************************************
 * Copyright (c) 2019 Bielefeld University
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *  * Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 *
 *  * Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 *  * Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *********************************************************************/

/* Author: Robert Haschke
   Desc:   Planning a simple sequence of Cartesian motions
*/
#include <ros/ros.h>
#include <moveit/task_constructor/task.h>

#include <moveit/task_constructor/stages/fixed_state.h>
#include <moveit/task_constructor/solvers/cartesian_path.h>
#include <moveit/task_constructor/solvers/joint_interpolation.h>
#include <moveit/task_constructor/stages/move_to.h>
#include <moveit/task_constructor/stages/move_relative.h>
#include <moveit/task_constructor/stages/connect.h>

// Walter Added these
#include <moveit/task_constructor/stages/compute_ik.h>
//#include <moveit_visual_tools/moveit_visual_tools.h>//problem child
#include <moveit_task_constructor_msgs/ExecuteTaskSolutionAction.h>
#include <moveit/task_constructor/stages/current_state.h>
#include <moveit/task_constructor/solvers/pipeline_planner.h>
#include <moveit/task_constructor/stages/modify_planning_scene.h>


#include <moveit/planning_scene/planning_scene.h>

using namespace moveit::task_constructor;

Task createTask() {
	Task t;
	t.stages()->setName("Cartesian Path");

	const std::string group = "manipulator";

	// create Cartesian interpolation "planner" to be used in various stages
	auto cartesian_interpolation = std::make_shared<solvers::CartesianPath>();
	// create a joint-space interpolation "planner" to be used in various stages
	auto joint_interpolation = std::make_shared<solvers::JointInterpolationPlanner>();

	// start from a fixed robot state
	t.loadRobotModel();
    Stage* current_state = nullptr;
	auto scene = std::make_shared<planning_scene::PlanningScene>(t.getRobotModel());
	{
		auto& state = scene->getCurrentStateNonConst();
		state.setToDefaultValues(state.getJointModelGroup(group), "ready");

		auto fixed = std::make_unique<stages::FixedState>("initial state");
		fixed->setState(scene);
		t.add(std::move(fixed));
	}

	{
		auto stage = std::make_unique<stages::MoveRelative>("x +0.2", cartesian_interpolation);
		stage->setGroup(group);
		geometry_msgs::Vector3Stamped direction;
		direction.header.frame_id = "world";
		direction.vector.x = 0.2;
		stage->setDirection(direction);
		t.add(std::move(stage));
	}

	{
		auto stage = std::make_unique<stages::MoveRelative>("y -0.3", cartesian_interpolation);
		stage->setGroup(group);
		geometry_msgs::Vector3Stamped direction;
		direction.header.frame_id = "world";
		direction.vector.y = -0.3;
		stage->setDirection(direction);
		t.add(std::move(stage));
	}

	{  // rotate about TCP
		auto stage = std::make_unique<stages::MoveRelative>("rz +45°", cartesian_interpolation);
		stage->setGroup(group);
		geometry_msgs::TwistStamped twist;
		twist.header.frame_id = "world";
		twist.twist.angular.z = M_PI / 4.;
		stage->setDirection(twist);
		t.add(std::move(stage));
	}

	return t;
}

int main(int argc, char** argv) {
	ros::init(argc, argv, "mtc_tutorial");
	// run an asynchronous spinner to communicate with the move_group node and rviz
	ros::AsyncSpinner spinner(1);
	spinner.start();

	auto task = createTask();
	try {
		if (task.plan())
			task.introspection().publishSolution(*task.solutions().front());
	} catch (const InitStageException& ex) {
		std::cerr << "planning failed with exception" << std::endl << ex << task;
	}

	ros::waitForShutdown();  // keep alive for interactive inspection in rviz
	return 0;
}