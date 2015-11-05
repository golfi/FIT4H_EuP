# 2. Klasse Kredit 
# a. Legen Sie eine Klasse Kredit an, mit der Eigenschaft kunde (ohne Setter und Getter) und einem Konstruktor, der die Eigenschaft kunde füllt. Die Eigenschaft Kunde wird mit einem Kunden-Objekt initialisiert. Erzeugen Sie ein Objekt kredit1, dem Sie das bereits existierende Objekt kunde1 übergeben.
# b. Legen Sie eine Eigenschaft jahresgehalt an, die sowohl les- als auch schreibbar sein soll. Füllen Sie für das Objekt kredit1 die Eigenschaft mit einem Wert von 24000. 
# c. Legen Sie eine Getter-Methode für die Eigenschaft kunde an, die folgende Ausgabe erzeugt: 'Theo Sonnenschein, Hermelinweg 11, 22159 Hamburg. Jahresgehalt: 24000 Euro.' 
# d. Fügen Sie eine Eigenschaft kreditsumme hinzu, auf die lesend und schreibend zugegriffen werden kann. Speichern Sie für das bestehende Objekt in der Eigenschaft kredit den Wert 5000.
# e. Fügen Sie eine Methode kreditvergabe hinzu. Diese Methode prüft, ob der Kredit vergeben werden kann. Die Vergabe ist abhängig davon, ob das Jahresgehalt mehr als 6 mal so groß ist, wie die kreditsumme. Falls der Kredit gewährt wird, erfolgt die Ausgabe: Der Kredit in Hoehe von 5000 € kann gewaehrt werden. Anderfalls: Sorry: kein Kredit. Besseren Job suchen.
# f. Ergänzen Sie die Klasse mit einer Methode abzahlung, der ein Parameter 'monate' mitgegeben wird. Die Methode dividiert den Kreditbetrag durch die 'Monate' und gibt aus, wie groß der abzuzahlende Betrag pro Monat ist. Die AUsgabe lautet: Bei einer Rückzahlung des Kredits von 5000 € innerhalb von 10 Monaten ist pro Monat eine Zahlung von 500 € notwendig.

class Kredit
	
	attr_accessor :jahresgehalt
	attr_accessor :kreditsumme
	attr_accessor :monate

	def initialize(kunde,kreditsumme,monate)
		@kunde = []
		@kreditsumme = []
		@monate
		@kunde = kunde
		@kreditsumme = kreditsumme
		@monate = monate
	end

	def to_s
		@kunde
	end

	def getter
		"#{@kunde} Jahresgehalt: #{@jahresgehalt} Euro."
	end	
	
	def kreditvergabe
		
		if @jahresgehalt >= 6 * @kreditsumme
			puts "Der Kredit in Hoehe von #{@kreditsumme}€ kann gewaehrt werden."
		else
			puts "Sorry: kein Kredit. Besseren Job suchen."
		end

	end

	def abzahlung
				@abzahlung = @kreditsumme / @monate
				puts "Bei einer Rückzahlung des Kredits von #{@kreditsumme}€ innerhalb von #{@monate} Monaten ist pro Monat eine Zahlung von #{@abzahlung}€ notwendig."
	end

end