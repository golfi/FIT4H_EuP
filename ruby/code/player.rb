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