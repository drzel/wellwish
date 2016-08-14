Given(/^there is a wish with title "([^"]*)"$/) do |title|
  @user = User.create(
    email: "test_user@email.com",
    password: "secret",
    password_confirmation: "secret"
  )
  @user.wishes.create title: title
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

When(/^I click on "([^"]*)"$/) do |target|
  click_on target
end
