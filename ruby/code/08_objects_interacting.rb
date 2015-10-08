require_relative 'game'
require_relative 'player'

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