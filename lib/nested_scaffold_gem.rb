class Hola
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end

class Nested_scaffold
	attr_reader :erste, :zweite
	def self.resources(erste, zweite)
		@erste = erste
		@zweite = zweite
		#@erste + " " + @zweite
	end

	def self.erste
		@erste
	end

	def self.zweite
		@zweite
	end
end



require "nested_scaffold_gem/translator"

 