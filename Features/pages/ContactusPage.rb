require 'site_prism'


class ContactusPage < SitePrism::Page
	include RSpec::Matchers
	# this is requrired for "ecpect" method along with site_prosim
	set_url 'https://www.three.co.uk/support/contact-us'
   #   def navigateTo
   #       visit 'http://www.three.co.uk/support/contact-us'
	  # end
	element :h1heading, "h1", :text => "Contact us."


	def verifyHeading
		expect(page).to have_content(h1heading)
	end
end