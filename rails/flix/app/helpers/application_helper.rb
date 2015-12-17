module ApplicationHelper
	def format_total_gross(movie)
		if movie.flop?
			content_tag(:strong, 'FLOP')
		else
			number_to_currency(movie.total_gross, unit: "€")
		end
	end

	def poster_image_for(movie)
		if movie.poster_image_file.blank?
			image_tag 'dummy.jpg', size: "100x100" 
		else
			image_tag movie.poster_image_file
		end
	end
end