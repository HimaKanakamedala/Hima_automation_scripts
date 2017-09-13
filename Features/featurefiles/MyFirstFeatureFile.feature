Feature: As a Three user I need to access the home page
@Verify
Scenario: Navigating to registre page.

Given I enter url "https://www.three.co.uk"
When I click register button 
Then I should navigate to register page.


