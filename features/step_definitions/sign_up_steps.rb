When(/^I go to the new user registration page$/) do
  visit 'users/sign_up'
end

When(/^I fill in the new user form$/) do
  fill_in 'Email', with: 'test_user_1@email.com'
  fill_in 'Password', with: 'secret'
  fill_in 'Password confirmation', with: 'secret'
end
