class Hola
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end
require "nested_scaffold_gem/translator"

#OLD
#class Nested_scaffold
#	attr_reader :erste, :zweite
#	def self.resources(erste, zweite)
#		@erste = erste
#		@zweite = zweite
#	end
#
#	def self.erste
#		@erste
#	end
#
#	def self.zweite
#		@zweite
#	end
#end

class Nested_scaffold
	attr_reader :erste, :zweite
	def initialize(erste, zweite)
		@erste = erste
		@zweite = zweite
	end

	def output
		puts "Die erste Resource lautet #{@erste} !"
		puts "Die zweite Resource lautet #{@zweite} !"
		out_file = File.new("out.txt", "w")
		out_file.puts("#{@erste} and #{@zweite}")
		out_file.close
	end
end

