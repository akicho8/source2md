lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) if !$LOAD_PATH.include?(lib)
require "source2md/version"

Gem::Specification.new do |spec|
  spec.name         = "source2md"
  spec.version      = Source2MD::VERSION
  spec.author       = "Akira Ikeda"
  spec.email        = "pinpon.ikeda@gmail.com"
  spec.homepage     = "https://github.com/akicho8/source2md"
  spec.summary      = "Markdown generator from source code"
  spec.description  = "Markdown generator from source code"
  spec.platform     = Gem::Platform::RUBY
  spec.license      = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "pathname"
  spec.add_dependency "table_format"
  spec.add_dependency "thor"
  spec.add_dependency "zeitwerk"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "test-unit"
end
