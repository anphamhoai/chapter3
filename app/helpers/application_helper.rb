module ApplicationHelper
	# Return title
	def full_title(page_title='')
		base_title = "Ruby On Rails Tutorial Sample"
		if page_title.empty?
			base_title
		else 
			page_title + " | " + base_title
		end
	end
end
