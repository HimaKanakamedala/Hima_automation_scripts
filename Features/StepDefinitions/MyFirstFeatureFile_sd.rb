# require ('capybara/cucumber')
# require ('selenium-webdriver')

# Capybara.default_driver = :selenium
# Capybara.register_driver :selenium do |app|
# 	browser = ('firefox').to_sym
# 	Capybara::Selenium::Driver.new(app,:browser => browser)
	
# end
# Capybara.default_driver = :selenium


Given(/^I enter url "([^"]*)"$/) do |url|
visit url 
  
end

When(/^I click register button$/) do 
  
end

Then(/^I should navigate to register page\.$/) do
  
end
