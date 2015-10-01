# Zusatz Zahlen im Array und im Hash:
# a. Legen Sie ein Array an mit 10 Primzahlen. Die Ausgabe des Arrays erzeugt:
# 	1 ist einstellig
# 	3 ist einstellig
# 	...
# 	11 ist zweistellig
#   ...

require "prime"
prim = Prime.first 10
prim.size.times { |i| if prim[i] > 9;
	puts "#{prim[i]} ist zweistellig!!"
	else
		puts "#{prim[i]} ist einstellig!!"
	end
}
puts "\n"
# b. Legen Sie zur Übung einen Hash personen an, mit den keys vorname, nachname, stadt und den Werten Theo, Sommer, Lodz. Machen Sie eine Ausgabe, die 'vorname: Theo + neue Zeile' ausgibt

personen = Hash["vorname" => "Theo", "nachname" => "Sommer", "stadt" => "Lodz"];
	puts "Vorname: \t#{personen['vorname']}\nNachname: \t#{personen['nachname']}\nStadt: \t\t#{personen['stadt']} \n\n"

# c. Fortsetzung Aufgabe a: 
# Speichern Sie beim Durchlaufen des Arrays die Werte in einem Hash mit der Bezeichnung prims, sodass die jeweilige Primzahl den Schlüssel bildet und der Wert den Text 'ist einstellig', 'ist zweistellig'

eins = ""
zweis = ""

prim.size.times { |i| prims = Hash["key" => prim[i], "wert" => if prim[i] > 9; "ist zweistellig" else "ist einstellig" end];
	if prims['wert'] == "ist einstellig"; 
		eins += "#{prims['key']},"
		else
		zweis += "#{prims['key']},"
	end
	puts prims
}

puts "\n"


# d. Sortieren Sie den Hash, sodass die Ausgabe folgendermaßen möglich wird:
# Einstellig: 1,3,5 ..
# Zweistellig: 11, 13, ..

puts "Einstellig: #{eins.to_s}\nZweistellig: #{zweis.to_s}"
puts "\n"

# e. Fortsetzung Aufgabe b: 
# Speichern Sie den Hash in dem Array adressen und legen Sie zwei weitere Hashes personen mit den gleichen Keys und anderen Werten an. Durchlaufen Sie das Array, sodass folgende Ausgabe erfolgt.
# 1.Person:
# Name: Theo
# Vorname: Sommer
# Stadt: Lodz
# 2. Person:
# ......

adressen = []

personen = Hash["vorname" => "Theo", "nachname" => "Sommer", "stadt" => "Lodz"];
adressen << personen
personen = Hash["vorname" => "Benni", "nachname" => "Zaschke", "stadt" => "Bienenbüttel"];
adressen << personen
personen = Hash["vorname" => "Christian", "nachname" => "Ohff", "stadt" => "Meckelfeld"];
adressen << personen

puts adressen

adressen.size.times { |i| 
	puts "#{i+1}. Person"
	puts "Vorname: \t#{adressen[i]['vorname']}"
	puts "Nachname: \t#{adressen[i]['nachname']}"
	puts "Stadt: \t\t#{adressen[i]['stadt']} \n\n"
}

	#puts "Vorname: \t#{personen['vorname']}\nNachname: \t#{personen['nachname']}\nStadt: \t\t#{personen['stadt']} \n\n"