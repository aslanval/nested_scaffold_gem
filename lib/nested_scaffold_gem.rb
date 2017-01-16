require "nested_scaffold_gem/version"

module NestedScaffoldGem

end

class Hola
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end

require "nested_scaffold_gem/translator"