Feature: Tasks
In order to keep track of tasks
People should be able to
Create a list of tasks

	Scenario: List Tasks
	Given that I have created a task "task 1"
	When I go to the tasks page
	Then I should see "task 1"

	Scenario: Add a Task
	When I go to the tasks page
	When I follow "New task"
	When I fill in "description" with "go shopping"
	And I press "Create"
	Then I should see "Task was successfully created."
	And I should see "go shopping"
	
	Scenario: Clicking on description link allows edit
	Given that I have created a task "go shopping"
	When I go to the tasks page
	When I follow "Go Shopping"
	Then I should see "Editing Task"

	Scenario: After Editing I return to the task list
	Given that I have created a task "go shopping"
	When I go to the tasks page
	When I follow "Go Shopping"
	And I fill in "description" with "buy bagels"
	And I press "Update"
	Then I should see "Task was successfully updated."
	And I should see "Listing tasks"
	And I should see "buy bagels"
		
	Scenario: Delete a Task when there is 1 defined
	Given that I have created a task "task 1"
	When I go to the tasks page
	And I click "delete" for "task 1"
	Then I should see "Listing tasks"
	And I should not see "task 1"

	Scenario: Delete task 1 when there are 2 defined
	Given that I have created a task "task 1"
	And that I have created a task "task 2"
	When I go to the tasks page
	And I click "delete" for "task 1"
	Then I should see "Listing tasks"
	And I should not see "task 1"
	
	Scenario: Delete task 2 when there are 2 defined
	Given that I have created a task "task 1"
	And that I have created a task "task 2"
	When I go to the tasks page
	And I click "delete" for "task 2"
	Then I should see "Listing tasks"
	And I should not see "task 2"
	