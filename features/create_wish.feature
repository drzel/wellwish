Feature: A user creates a wish

	Scenario: A user creates a valid wish
		Given I am a signed in user
		When I click on "New Wish"
		And I fill in the new wish fields
		And I click the "Create Wish" button
		Then I should see "Wish was successfully created."
