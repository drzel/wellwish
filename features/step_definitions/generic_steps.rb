Given(/^there is a wish with title "([^"]*)"$/) do |title|
  Wish.create title: title
end

When(/^I visit the home page$/) do
    visit '/'
end

Then(/^I should see "([^"]*)"$/) do |string|
  page.has_content? string
end
