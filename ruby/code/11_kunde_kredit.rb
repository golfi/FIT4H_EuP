require_relative '11_kunde'
require_relative '11_kredit'

person1= Kunde.new('theo sommer','Lindenstraße 26, 29553 Bienenbüttel')

person1.to_s
person1.name = 'theo sonnenschein'
person1.gehalt = 2000
person1.to_s
puts person1.name
puts person1.gehalt
person1.getter