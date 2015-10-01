# 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
zahlen = (15..20).to_a
# a. geben Sie diese Zahlen in einem Block aus
zahlen.count.times { |i| puts zahlen[i] }
# b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
zahlen.size.times { |i| puts "Index: #{i} - Wert: #{zahlen[i]}"}
# c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern.
zahlen.size.times { |i| hash = Hash[zahlen[i], rand(100) + 100]; puts hash}
# d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121
puts "\n"
zahlen.size.times { |i| hash = Hash["a" => zahlen[i], "b" => rand(100) + 100]; puts"Index: #{hash['a']} - Wert: #{hash['b']}"}
puts "\n"
# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
zahlen.size.times { |i| hash = Hash["a" => zahlen[i], "b" => rand(100) + 100]; 
	if hash['b'] > 150; 
		puts"Index: #{hash['a']} - Wert: #{hash['b']} WOW" 
	else puts "Index: #{hash['a']} - Wert: #{hash['b']}" 
	end 
}
puts "\n"
# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
qua = []
zahlen.size.times { |i| qua << zahlen[i] * zahlen[i]
	puts qua[i]
}
puts "\n"
# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel


zahlen.size.times { |i| h = Hash["a" => zahlen[i], "b" => qua[i]];
	puts "Wert: #{h['a']} - Quadratzahl: #{h['b']} \n #{h}"
}
puts "\n"
