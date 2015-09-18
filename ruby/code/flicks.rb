class Movie
	attr_accessor :title
	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank = prank
	end
	
	def thumbs_up
		@rank += 1
	end
	def thumbs_down
		@rank -= 1
	end
	def to_s
		"#{@title} hat ein Ranking von: #{@rank}."
	end
end

movie1 = Movie.new('NinjaTurtles',4)
movie2 = Movie.new('SWAT',5)
movie3 = Movie.new('8mm',10)

movies = [movie1, movie2, movie3]
movies.each do |movie|
	movie.thumbs_up
	movie.thumbs_down
	puts movie
end


# class Movie
	
# 	def initialize(ptitle, prank=0)
# 		@title = ptitle.capitalize
# 		@rank = prank
# 	end

# 	def thumbs_up
# 		@rank += 1
# 		#@rank = @rank + 1
# 	end

# 	def thumbs_down
# 		@rank -= 1
# 		#@rank = @rank - 1
# 	end

# 	def to_s
# 		"#{@title} hat ein Ranking von: #{@rank}."
# 	end

# end

# obj_movie1 = Movie.new('SWAT', 4)
# puts obj_movie1.to_s
# obj_movie1.thumbs_up
# puts obj_movie1.to_s
# obj_movie1.thumbs_down
# obj_movie1.thumbs_down
# puts obj_movie1.to_s


# def movie_listing(title, rank=10)

# 	"Movie: #{title.downcase.capitalize} hat #{weekday} das Ranking #{rank}"

# end

# def weekday
# 	Time.now.strftime("%A")
# end

# puts movie_listing("The Transporter",7)
# puts movie_listing("SWAT",3)


#Beispiel für Variablen innerhalb von methoden
# def movie_listing

# 	var = "Movie: The Transporter"
# 	puts "var innerhalb einer Methode: #{var.object_id}"
# 	var2 = "Movie: The Transporter2"
# 	"#{var}\n\t\t#{var2}"
# end

# var = movie_listing
# puts "var auserhalb: #{var.object_id}"
# puts "Rückgabewert #{var}"