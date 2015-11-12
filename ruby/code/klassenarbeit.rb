class Buch

	attr_accessor:autor, :gekauft_am, :titel

	def initialize(autor,titel,gekauft)
		@autor =[]
		@autor = autor
		@titel = titel
		@gekauft_am = gekauft
	end

end

class Autor
	attr_reader:Name, :Geburtstag

	def initialize(name,geburtstag)
		@Name = name
		@Geburtstag = geburtstag
	end

end

class Bibliothek

	attr_reader:name
	attr_accessor:buecher
	def initialize(name)
		@name = name
		
	end

	def add_book(buecher)
		@buecher = []
		@buecher << buecher
	end

	def to_s
			@buecher[0]
	end

end

bibliothek1 = Bibliothek.new('Hamburg')
autor_1 = Autor.new('Maier','10.3.1980')
puts autor_1.Name
buch_1 = Buch.new(autor_1.Name,'Niemand','2005')
buch_2 = Buch.new(autor_1.Name,'Jeder','2010')
buch_3 = Buch.new(autor_1.Name,'Immer wieder gern','2013')
buch_4 = Buch.new(autor_1.Name,'Morgen ist auch noch ein Tag','2011')

bibliothek1.add_book(buch_1)
bibliothek1.add_book(buch_2)
bibliothek1.add_book(buch_3)
bibliothek1.add_book(buch_4)
puts bibliothek1

