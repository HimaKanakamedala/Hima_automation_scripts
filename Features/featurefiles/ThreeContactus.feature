
	Feature: Users are able to access all the links on the contact us page.

	# 	Scenario Outline: all links should be functionally work.
 #    Given I'm on "https://www.three.co.uk/support/contact-us" 
	# When I click on available link "<link>"
	# Then I should navigate to the correct page and see the valid "<H1_heading>" of the page.

	# 	 Examples:
 #     | link           | H1_heading                                  |  
 #     | Lost & Stolen. | Reporting your Three device lost or stolen. |  
 #   # | Store locator. |                                             |  
 #     | Complaints.    | Customer complaints code.                   |  

Scenario Outline: Click on header links
Given I'm on "https://www.three.co.uk"
When I click on Shop 
And I clikc on Mega menu links "<Link>"
Then I should go to the "<expected>" page 

Examples: 

| Link    | expected        |  
| Upgrade | Welcome to My3. |  

