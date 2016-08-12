Feature: A user signs up

	Scenario: A visitor signs up
		When I go to the new user registration page
		And I fill in the new user form
		And I click the "Sign up" button
		Then I should see "You have signed up successfully."
