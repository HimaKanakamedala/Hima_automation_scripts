Feature: Verify the links in header mega menu
@verify
Scenario Outline: verify links in Mobile phones section

# Given I'm on Three site
When I hover on Shop header link
Then I should see the "<links>" as expected

Examples:
| links                |  
| Mobile phones.       |  
| Pay monthly phones   |  
| Pay As You Go phones |  




