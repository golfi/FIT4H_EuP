class Game
	def initialize(title)
		@title = title
		@players = []		
	end
	def add_player(player)
		@players << player
	end
	def play
		puts "Es sind #{@players.count} Spieler online in #{@title}:"
		@players.each do |player|
			puts player
		end
	end
end