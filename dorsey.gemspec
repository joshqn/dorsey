
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dorsey/version"

Gem::Specification.new do |spec|
  spec.name          = "dorsey"
  spec.version       = Dorsey::VERSION
  spec.authors       = ["Josh Kuehn"]
  spec.email         = ["jmkappdeveloper@gmail.com"]

  spec.summary       = %q{An easy way to create scaffolding to start a sinatra project}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
