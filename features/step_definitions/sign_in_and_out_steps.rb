Given(/^a user with email "([^"]*)" and password "([^"]*)"$/) do |email, password|
  @user ||= User.create(
    email: email,
    password: password,
    password_confirmation: password
  )
end

When(/^I go to the user sign in page$/) do
  visit '/users/sign_in'
end

When(/^I fill in the user sign in form$/) do
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
end

Given(/^I am a signed in user$/) do
  steps %Q{
    Given a user with email "test_user@email.com" and password "secret"
    When I go to the user sign in page
    And I fill in the user sign in form
    And I click the "Log in" button
    Then I should see "Signed in successfully."
  }
end
