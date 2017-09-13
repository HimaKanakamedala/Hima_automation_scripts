Given(/^I am on Conatct us page$/) do
	@contact_page = ContactusPage.new
	@contact_page.load
	expect(@contact_page).to be_displayed
end

Then(/^I should see the correct heading on the page.$/) do
	@contact_page.verifyHeading
end
