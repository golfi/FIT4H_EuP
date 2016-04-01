module ApplicationHelper
	def format_price(product)
		if product.free?
			#"<strong>FREE</strong>".html_safe
			content_tag(:strong, "Free") 
		else 
			number_to_currency(product.price, precision: 2, :unit => "€")
		end
	end
end
