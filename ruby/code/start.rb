# str = "Die Woche besteht aus:\n\tMontag\n\tDienstag."
# puts str

# zahl = 15
# puts zahl
# #puts konvertiert eine Zahl in einen String, besser ist aber eine explizierte Konvertierung (puts zahl.to_s)

# #Zussammengesetzte Strings:
# puts str + zahl.to_s

# puts "#{str} der #{zahl}. im Monat! ;-)"

# tag ="Freitag"
# 	puts "Heute ist #{tag}, der #{Time.new}."

# 3.times do
# 	puts str
# end

# Blöcke

str = "Freitag, hurra!!!"
3.times do
	puts str
end

3.times {	puts str; puts "hei"}