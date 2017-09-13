# require ('capybara/cucumber')
# require ('selenium-webdriver')

# Capybara.default_driver = :selenium

# Capybara.register_driver :selenium do |app|
# 	browser = ('chrome').to_sym
# 	Capybara::Selenium::Driver.new(app,:browser => browser)
	
# end
# Capybara.default_driver = :selenium

Given(/^I'm on "([^"]*)"$/) do |url|
visit url
end


When(/^I click on available link "([^"]*)"$/) do |link|
click_link(link)
end

Then(/^I should navigate to the correct page and see the valid "([^"]*)" of the page\.$/) do |expected_H1heading|
if(expected_H1heading=="Reporting your Three device lost or stolen.")
actual_H1heading=find(:xpath,"html/body/div[1]/div[1]/h1").text
# expect(expected_H1heading).to eq(actual_H1heading)
else if (expected_H1heading=="Customer complaints code.")
actual_H1heading=find(:xpath,"html/body/div[1]/h1").text
else
puts "store locator"
end
end
expect(expected_H1heading).to eq(actual_H1heading)
end

# expect(:xpath, xpath).to have_content(expected_H1heading)

# When(/^I click on the contact us "([^"]*)" link$/) do |arg1|
#   @three_website.contact_us.clickLink(arg1)


When(/^I click on Shop$/) do
	find(:id,"shop-navigation").hover
end

When(/^I clikc on Mega menu links "([^"]*)"$/) do |link|
click_link(link)
end

Then(/^I should go to the "([^"]*)" page$/) do |exp_expected|
if(exp_expected=="Welcome to My3.")
actual_H1heading=find(:xpath,"html/body/div[3]/div/div/div[2]/div/div/div[1]/div/div/div[2]/div[1]/div[1]/div[3]/div/div/div[2]/div/div/div/h1/strong").text
expect(exp_expected).to eq(actual_H1heading)

else

	puts 'Error'
end
end