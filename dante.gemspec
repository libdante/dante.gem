#!/usr/bin/env ruby
# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dante/version"

Gem::Specification.new do |spec|
  spec.name          = "dante"
  spec.version       = Dante::VERSION
  spec.authors       = ["Kurtis Rainbolt-Greene", "Nathan Esquenazi"]
  spec.email         = ["me@kurtisrainboltgreene.name", "nesquena@gmail.com"]
  spec.summary       = %q{Turn any ruby script into an executable and/or daemon}
  spec.description   = spec.summary
  spec.homepage      = "http://libdante.github.io/dante.gem"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"]
  spec.executables   = Dir["bin/**/*"].map! { |f| f.gsub(/bin\//, "") }
  spec.test_files    = Dir["test/**/*", "spec/**/*"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake", "~> 10.1"
  spec.add_development_dependency "pry", "~> 0.9"
  spec.add_development_dependency "pry-doc", "~> 0.6"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4"
end
