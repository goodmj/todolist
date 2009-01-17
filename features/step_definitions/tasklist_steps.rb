Given /^that I have created a task "(.*)"$/ do |desc|
  Task.create!(:description => desc)
end

When /^I go to the tasks page$/ do 
  visit "/tasks"
end

When /^I click "(.*)" for "(.*)"$/ do |link, desc|
  task = Task.find_by_description(desc)
  within("table > tr#task"+task.id.to_s) do
    click_link link
  end
end
