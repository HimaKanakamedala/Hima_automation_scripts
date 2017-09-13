# require ('capybara/cucumber')
# require ('selenium-webdriver')

# Capybara.default_driver = :selenium
# Capybara.register_driver :selenium do |app|
# 	browser = ('chrome').to_sym
# 	Capybara::Selenium::Driver.new(app,:browser => browser)
	
# end
# Capybara.default_driver = :selenium


Given(/^I'm on "([^"]*)" page$/) do |url|
visit url
end

When(/^I click on Links in our comapany "([^"]*)"$/) do |link|
click_link(link)
end

Then(/^I should be taken to the intended pages and see the valid "([^"]*)"$/) do |expected_H1heading|
find(:xpath,"html/body/header/div[2]/div/a/span").click
# click_on("//*[@id='rwd-cookie-message']/div/a/span")
actual_H1heading=find(:xpath,"//*[@id='site-links']/dl[4]/dd/a[3]").text
 
puts actual_H1heading

end




# Then(/^I should navigate to the correct page and see the valid "([^"]*)" of the page\.$/) do |expected_H1heading|
# if(expected_H1heading=="Reporting your Three device lost or stolen.")
# actual_H1heading=find(:xpath,"html/body/div[1]/div[1]/h1").text
# # expect(expected_H1heading).to eq(actual_H1heading)
# else if (expected_H1heading=="Customer complaints code.")
# actual_H1heading=find(:xpath,"html/body/div[1]/h1").text
# else
# puts "store locator"
# end
# end
# expect(expected_H1heading).to eq(actual_H1heading)
# end
