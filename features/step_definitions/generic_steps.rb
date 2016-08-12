Given(/^there is a wish with title "([^"]*)"$/) do |title|
  Wish.create title: title
end

When(/^I visit the home page$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |string|
  assert page.has_content? string
end

When(/^I click the "([^"]*)" button$/) do |button|
  click_button button
end
