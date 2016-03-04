namespace :import do 															#funktionsname
	desc "Datei einlesen"
	task :load_data => :environment do							#task name
		path = Rails.root.to_s + "/docs/load_data.csv"			#Pfadangabe
		file = File.open(path, "r")										#lesend öffnen 
		while !file.eof?															#end of file
			line = file.readline
			items = line.split(";")											#trennung durch ;
			Registration.create(how_heard: items[0],event_id: items[1], user_id: items[2])
		end
	end
end