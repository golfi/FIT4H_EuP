# Methoden:
# a. definieren Sie eine Methode say_hello mit dem Argument name. 
#    Das Ergebnis des Aufrufs ist dann die Ausgabe: 'Ich bin Ludwig'

def say_hello
	puts "ich bin Benjamin."
end
say_hello

# b. rufen Sie die Methode mit verschiedenen namen auf
def say_hello
	puts "ich bin Mike."
	puts "ich bin Steven."
	puts "ich bin Paul."
end
say_hello
# c. puts soll nun aus der Methode entfernt werden
def say_hello(name)
	puts "ich bin #{name}."
end
puts say_hello('Benjamin')
# d. aendern sie die Methode, so dass sie einen Statndarparmameter health entgegennimmt. 
#    Die Ausgabe lautet dann: 'Ich bin Ludwig mit einem Wert von 100'
def say_hello(name,health=0)
	puts "ich bin #{name} und mir geht es zu #{health}% gut."
end
puts say_hello('Benjamin',4)
# e. definieren Sie eine Methode time, die in der Methode say_hello aufgerufen 
#    wird und die Ausgabe folgendermaßen ergaenzt: 'Ich bin Ludwig mit einem Wert von 100 um 18:25'
def say_hello(name,health=0)
	puts "ich bin #{name} und mir geht es zu #{health}% gut um #{Time.now.strftime("%H.%M")} Uhr."
end
puts say_hello('Benjamin',4)

# Klassen:
# a. erstellen Sie eine Klasse mit der Bezeichnung Player
class Player
	# c. erstellen Sie eine initialize - Methode, die die Parameter name und health hat 
	#    und aus diesen Werten die Instanzvariablen @name und @health initialisiert
	# e. setzen Sie fuer health einen Standardwert 100
	def initialize(name,health=100)
		@name = name
		@health = health
 	end
 	
 	# h. fuegen Sie eine Instanzmethode blam und w00t hinzu, die den Wert fuer health umd 10 hochsetzt, 
	#    bzw. reduziert und ausgibt: Tom got blamed, bzw. w00ted.

	def blam
		@health += 10
	end
	def w00ted
		@health -= 10
	end


 	# g. passen Sie die say_hello - Methode aus der vorherigen Übung zur Ausgabe ein, so dass 
	#    puts player1.say_hello die Ausgabe ergibt
	def say_hello
		puts "ich bin #{@name} und mir geht es zu #{@health}% gut um #{Time.now.strftime("%H.%M")} Uhr."
	end

 	# d. updaten Sie das Objekt player1 und lassen sich das objekt anzeigen
 	 def to_s
 	 	puts "ich heiße #{@name} und mir geht es zu #{@health}% gut."
 	 end

end
# b. erstellen Sie ein Objekt player1 der Klasse
obj_player1 = Player.new('Benjamin',88)
#obj_player1.say_hello
# f. legen Sie eine neues Objekt player2 an, das nur den Namen als Parameter hat
obj_player2 = Player.new('Tom',99)
#obj_player2.to_s
obj_player2.w00ted
#obj_player2.say_hello
# i. die say_hello - Methode soll aufgerufen werden, wenn nur das Objekt ausgegeben werden soll, 
#    also puts players erfolgt.

players = obj_player1.say_hello,obj_player2.say_hello
players