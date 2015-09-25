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

class Player
	attr_accessor:health
	attr_accessor:name 
	def initialize(name,health=100)
		@name = name
		@health = health
 	end
	def blam
		@health += 10
		puts "#{@name} wurde geblamt!"
	end
	def w00ted
		@health -= 10
		puts "#{@name} wurde gew00ted!"
	end
	def score
		@health+@name.length		
	end
 	def to_s
 	 	"Der Spieler heißt #{@name} und seine Lebensanzeige beträgt #{@health}% mit einem Score von #{score}."
 	end
end

obj_player1 = Player.new('Benjamin',80)
obj_player2 = Player.new('Tom',90)
obj_player3 = Player.new('Bert',20)
obj_player4 = Player.new('Paul',50)

ga = Game.new("Call of Duty")

ga.add_player(obj_player1)
ga.add_player(obj_player2)
ga.add_player(obj_player3)
ga.add_player(obj_player4)
#ga.play

spieler = [obj_player1,obj_player2,obj_player3,obj_player4]

spieler.each do |param|
	puts param
	param.blam
	param.w00ted
	param.w00ted
	puts param
end