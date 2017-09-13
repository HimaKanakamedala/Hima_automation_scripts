require 'site_prism'

Given(/^I am on the Number port page$/) do
	@formpage = FormPage.new
	@formpage.navigateTo

end

When(/^I submit valid monthly details on the Number port page$/) do
	puts 'hima'
	# @formpage = FormPage.new
	# @formpage.load
	@formpage.submitMontlyDetails
end

Then(/^I see the Thank You page on number port$/) do
end
