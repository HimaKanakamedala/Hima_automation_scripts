	Feature: User should be able to click all footer links in Our company section.

	Scenario Outline: all the links in Our company should navigate to the correct pages.

	Given I'm on "https://www.three.co.uk" page
	When I click on Links in our comapany "<link>"

	Then I should be taken to the intended pages and see the valid "<H1heading>"

	Examples:

	| link          | H1heading                    |  
	| Business.     | Business mobile phones.      |  
	| Media centre. | Media centre.                |  
	| Careers.      | We’re anything but the same. |  


