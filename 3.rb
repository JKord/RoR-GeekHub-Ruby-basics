puts "TALK:"

while true
	said = gets.chomp

	if said == "BYE"
		puts "BYE my grandson!"
		break
	end
	
	if said == said.upcase
		year = 1930 + rand(21)
		puts "NO, NEVER since " + year.to_s + "!" 
	else
		puts "Eh? Speak louder, my grandson!"
	end
end