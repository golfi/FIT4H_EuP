# Erstellen Sie eine Klasse Calculator mit einem Konstruktor, der zwei Zahlen entgegennimmt
# und in Instanzvariablen speichert. 
# Eine Methode add, und eine Methode subtract führt eine Addition und eine Substraktion durch 
# und gibt das Ergebnis zurueck.
# Legen Sie ein Objekt an und wenden Sie die Methoden add und subtract an.

class Rechner
	
	attr_accessor:zahl1, :zahl2

	def initialize(pzahl1, pzahl2=0)
		@zahl1 = pzahl1
		@zahl2 = pzahl2
	end

	def add
		@erg = @zahl1 + @zahl2
		puts "das Ergebnis ist: #{@erg}"
	end

	def sub
		@erg = @zahl1 - @zahl2
		puts "das Ergebnis ist: #{@erg}"
	end
end

rechnen1=Rechner.new(5,6)
rechnen1.add
rechnen1.sub
rechnen1.zahl1 =10
rechnen1.sub