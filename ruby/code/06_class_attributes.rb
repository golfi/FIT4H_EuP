class Player
	attr_accessor:health
	attr_accessor:name 
	def initialize(name,health=100)
		@name = name
		@health = health
 	end
	def blam
		@health += 10
	end
	def w00ted
		@health -= 10
	end
	def say_hello
		 "ich bin #{@name} und mir geht es zu #{@health}% gut um #{Time.now.strftime("%H.%M")} Uhr."
	end
 	def to_s
 	 	"ich heiße #{@name} und mir geht es zu #{@health}% gut."
 	end
 	def attribute
 		@erg=@health+@name.bytesize #length
 	end

end

obj_player1 = Player.new('Benjamin',88)
obj_player2 = Player.new('Tom',99)
#obj_player2.w00ted

# players = obj_player1.say_hello,obj_player2.say_hello
# players

# puts obj_player2.health
# puts obj_player2.name
# puts obj_player2.name = "Frieda"
# puts obj_player2.attribute

player_array=[obj_player1.to_s,obj_player2.say_hello,obj_player2.say_hello,obj_player2.say_hello]
puts player_array

3.times do |i|
	puts i.to_s
	puts player_array[i]

end

# player_array.each do |var|
# 	var
# end


# 2.times do |zaehler|
# 		player_array[zaehler]
# 	end


# zaehler=0
# while(zaehler < 2)
# 	player_array[zaehler]
# 	zaehler+=1
# end