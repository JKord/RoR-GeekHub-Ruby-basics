class Humen
	def initialize(name)
		@name = name
		@hp = 100
	end
	
	def askName
		puts @name
	end
	
	def go(to)
		puts to
	end
end

class Hero < Humen

	attr_accessor :test
	attr_reader :name
    attr_writer :name

	@@k = 23
	@s = 15
	def self.s
		@s
	end
	def self.k
		@@k
	end

	def askName		
		puts 'Hero ' + @name
	end
	
	private
	
	def bla
		@test= 10
		puts 'Hero ' + @name
	end	
end

h = Humen.new('Lz')
h.askName

h = Hero.new('Lz')
h.askName
#h.bla

puts Hero.s

puts Hero.k

puts h.test

h.name = 5
puts h.name


#h.go('dfdf')

#'dfdf'.ff

require 'tk'

root = TkRoot.new do
	title "blla"
end

Tk.mainloop