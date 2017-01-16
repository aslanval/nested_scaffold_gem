# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nested_scaffold_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "nested_scaffold_gem"
  spec.version       = NestedScaffoldGem::VERSION
  spec.authors       = ["aslanval"]
  spec.email         = ["valid.aslan@gmx.de"]

  spec.summary       = %q{DONT USE IT, NOT FINISHED - With this gem you can create a nested resource (1:n)}
  spec.description   = %q{DONT USE IT, NOT FINISHED - With a command, a scaffold will be done with all of his steps, but nested in a 1:n relation to another resource.}
  spec.homepage      = "https://github.com/aslanval/nested_scaffold_gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.files         = ["lib/nested_scaffold_gem.rb", "lib/nested_scaffold_gem/translator.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  #spec.executables << "bin/hola"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
