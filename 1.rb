puts "Vvedit kilkist secund:"
sekonds = Integer(gets.chomp)

year = sekonds / 31556925.9747
month = sekonds / 2548800
day = sekonds / 86400
hours = sekonds / 3600
minutes =  sekonds / 60

puts year.to_s + "y or " + month.to_s + "m or " + day.to_s + "d or " + hours.to_s + "h or " + minutes.to_s + "m"

File.open('formula.txt', 'w') do |f|
  f.puts "sekonds / ch"  
end