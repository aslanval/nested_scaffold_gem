class Hola
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end
require "nested_scaffold_gem/translator"

class Nested_scaffold
	attr_reader :first, :second
	def initialize(first, second)
		@first = first
		@second = second

		@first_p = first + "s"
		@second_p = second + "s"

		@class_erste = first.capitalize
		@class_zweite = second.capitalize
	end

#	def output
#		puts "Die erste Resource lautet #{@first} !"
#		puts "Die zweite Resource lautet #{@second} !"
#		out_file = File.new("out.txt", "w")
#		out_file.puts("#{@first} and #{@second}")
#		out_file.close
#	end

#	def eins_model
#		require 'fileutils'
#
#		tempfile=File.open("file.tmp", 'w')
#		f=File.new("movie.rb")
#		f.each do |line|
#		  tempfile<<line
#		  if line.downcase=~/^rofl/
#		    tempfile << "XXXXX\n"
#		  end
#		end
#		f.close
#		tempfile.close
#		FileUtils.mv("file.tmp", "movie.rb")
#	end
	def first_model
		has_many = "	has_many :#{@second_p}, dependent: :destroy\nend"
		file_names = ['_app/models/movie.rb']

		file_names.each do |file_name|
  			text = File.read(file_name)
 			new_contents = text.gsub(/end/, has_many)
  			#puts new_contents
  			File.open(file_name, "w") {|file| file.puts new_contents }
		end

	end

end

