# Jahreszeiten.join(" und ")
# 	#fügt text zwischen den werten des arrays
# Jahreszeiten.sort_by{rand} (shuffle)
# 	#sortiert die werte des arrays um


numbers = (1..10).to_a

numbers.size.times { |i| puts numbers[i] }

numbers.select { |n| n.even? } #geraden Zahlen
numbers.reject { |n| n.even? } #ungeraden Zahlen
numbers.select { |n| n.odd? }   #ungeraden Zahlen

even, odds = numbers.partition { |n| n.even? } #zwei Arrays einmal mit geraden und einmal mit ungeraden Zahlen