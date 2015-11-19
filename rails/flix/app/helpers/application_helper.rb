module ApplicationHelper
	def format_price(movie)
		if movie.free?
			#"<strong>FREE</strong>".html_safe
			content_tag(:strong, "Free") 
		else 
			number_to_currency(movie.total_gross, unit: "Euro ")
		end
	end
end
