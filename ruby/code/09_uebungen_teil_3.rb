# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert

# worte = ["Pflaume","Bauschaum","Auster"]
# var = worte.select do |a|
# 	a.include?("aus") || a.include?("Aus")
# end
# puts var

# worte.each do |a|
# 	if a.downcase["aus"] == 'aus'
# 		puts a
# 	end
# end

# sorted = []
# worte.each do |cnt|
# 	sorted = worte.sort_by {|worte| worte.length}
# end
# puts sorted

# h = Hash.new
# worte.count.times do |cnt|
# 	h[worte[cnt]] = worte[cnt].length
# end

# puts h


# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.
# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}

lotto = []
7.times do
	z = rand(1..49)
	while lotto.include?(z)
		z = rand(1..49)
	end
	lotto << z
end

#puts lotto.sort

puts lotto2 = (1..49).to_a.sample(7).sort

lotto_hash = Hash.new
%w(Peter Paul Mary).each do |vname|
	lotto_hash[vname] = (1..49).to_a.sample(7).sort
end

puts lotto_hash

# 4. Vergleich:
# str_1 = "Programmieren, Federball, Whisky"
# str_2 = "Fussball, Bier, Programmieren"
# Die Ausgabe lautet:
# ergebnis = { :diff => ["Federball", "Whisky", "Fussball", "Bier"], :match => ["Programmieren"]}