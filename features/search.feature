Feature: Searching
Scenario: Use the Google search button
Given I am on the "home" page
When I enter the text "Quito Ecuador" in the search textbox
And click on the "Google Search" button
Then I should be redirected to the results page