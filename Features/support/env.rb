require ('capybara/cucumber')
require ('selenium-webdriver')
require ('rspec/expectations')
require ('capybara')
require ('capybara/rspec')
Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
	# browser = ('chrome').to_sym
	browser = (ENV['browser'] || 'chrome').to_sym
	# puts 'Hima browser'
	# puts browser
	Capybara::Selenium::Driver.new(app,:browser => browser)
	
end
Capybara.default_driver = :selenium
Capybara.app_host = 'https://www.three.co.uk'

