
# require ('capybara/cucumber')
# require ('selenium-webdriver')

# Capybara.default_driver = :selenium
# Capybara.register_driver :selenium do |app|
# 	browser = ('chrome').to_sym
# 	Capybara::Selenium::Driver.new(app,:browser => browser)
	
# end
# Capybara.default_driver = :selenium



Given(/^I'm on Three site$/) do
visit'https://www.three.co.uk'
end

When(/^I hover on Shop header link$/) do
	find(:id,"shop-navigation").hover
end

# Then(/^I should see the "([^"]*)" as expected$/) do |expected_link|
# if(expected_link=="Mobile phones.")
# 	actual_link=find(:xpath,"/html/body/header/section/div[1]/div/div[1]/h2/a").text
# else if(expected_link=="Pay monthly phones")
# 	actual_link=find(:xpath,"/html/body/header/section/div[1]/div/div[1]/ul/li[1]/a").text
# else if(expected_link=="Pay As You Go phones")
# 	actual_link=find(:xpath,"/html/body/header/section/div[1]/div/div[1]/ul/li[2]/a").text
# else 
# 	puts "Error"
# end
# end
# end
# expect(expected_link).to eq(actual_link)
# puts actual_link
# puts expected_link
# end


# Switch case code

Then(/^I should see the "([^"]*)" as expected$/) do |expected_link|
case expected_link 
	when "Mobile phones."
	actual_link=find(:xpath,"/html/body/header/section/div[1]/div/div[1]/h2/a").text
when "Pay monthly phones"
	actual_link=find(:xpath,"/html/body/header/section/div[1]/div/div[1]/ul/li[1]/a").text
when "Pay As You Go phones"
	actual_link=find(:xpath,"/html/body/header/section/div[1]/div/div[1]/ul/li[2]/a").text
else

puts "Error"
end
expect(actual_link).to eq(expected_link)

end
