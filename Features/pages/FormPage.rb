require 'site_prism'

class FormPage < SitePrism::Page
set_url '/Support/Number_Port'
set_url_matcher /Number_Port/
	def navigateTo
		visit 'https://www.three.co.uk/Support/Number_Port'

	end

	def submitMontlyDetails
		puts'cucumber'
	end

	end
