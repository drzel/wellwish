Feature: A user signs in and out

	Scenario: A registered user signs in
		Given a user with email "test_user@email.com" and password "secret"
		When I go to the user sign in page
		And I fill in the user sign in form
		And I click the "Log in" button
		Then I should see "Signed in successfully."
		
	Scenario: A signed in user signs outs
		Given I am a signed in user
		When I click on "Sign out"
		Then I should see "Signed out successfully."


