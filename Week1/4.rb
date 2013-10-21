array = [621, 448, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 12, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 572, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 300]

puts "Array:\n" + array.to_s
puts "\nCount: " + array.count.to_s
puts "Reverse: " + array.reverse.to_s
puts "Min: " + array.min.to_s + ", Max: " + array.max.to_s

puts "Mean: " + (array.inject(0){ |sum,el| sum + el.abs } / array.count.to_f).to_s

puts "\nArray Sort:\n"
puts array.sort.to_s   
puts "\n"         
puts array.sort {|x,y| y <=> x }.to_s

puts "\nArray delete ne parni:\n"
puts array.delete_if {|x| x % 2 != 0  }.to_s 

puts "\nArray elm / 3:\n"
puts array.clone.delete_if {|x| x % 3 != 0 }.to_s

puts "\nArray uniq:\n"
p array.uniq

puts "\nArray / 10:\n"
puts array.map{ |elem| elem / 10.0 }.to_s

puts "\nArray new ABC"
newABC = []
array.each{ |elem|
	if(elem < 256 && ([*('a'..'z'),*('A'..'Z')].include? elem.chr))
		newABC << elem.chr;
	end
}
p newABC

puts "\nArray min <--> max:\n"
tmp = array.clone
imin, imax = tmp.index(tmp.min), tmp.index(tmp.max)
tmp[imin], tmp[imax] = tmp.max, tmp.min
p tmp

puts "\nArray imin - 1: " + tmp[imax - 1].to_s

puts "\nArray elem 3 min: "
p array.sort.uniq[0..2]