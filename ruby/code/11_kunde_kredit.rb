require_relative '11_kunde'
require_relative '11_kredit'

person1= Kunde.new('theo sommer','Lindenstraße 26, 29553 Bienenbüttel')

person1.to_s
person1.name = 'theo sonnenschein'
person1.gehalt = 2000
person1.to_s
puts person1.name
puts person1.name.split.map(&:capitalize)*' '
puts person1.gehalt
puts person1.getter

kredit1= Kredit.new(person1.getter,5000,10)
puts kredit1.to_s
kredit1.jahresgehalt = 30000
puts kredit1.jahresgehalt
puts kredit1.getter
puts kredit1.kreditsumme
kredit1.kreditvergabe
kredit1.abzahlung
