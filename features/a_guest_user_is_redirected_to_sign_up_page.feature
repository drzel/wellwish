Feature: A guest user is redirected to the sign up page

	Scenario: A guest user attempts to create a new wish
		Given I am not signed in
		When I visit the home page
		And I click on "New Wish"
		Then I should see "Log in"

