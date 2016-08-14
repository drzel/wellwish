Feature: A user views the front page

	Scenario: A guest user visits the home page
		Given there is a wish with title "Feed kittens"
		When I visit the home page
		Then I should see "Feed kittens"
