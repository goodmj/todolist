Given /^that I have created a task "(.*)"$/ do |desc|
  Task.create!(:description => desc)
end

When /^I go to the tasks page$/ do 
  visit "/tasks"
end
