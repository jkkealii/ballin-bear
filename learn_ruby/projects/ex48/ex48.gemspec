# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "MyRuby"
  spec.version       = '1.0'
  spec.authors       = ["Josh Kuroda"]
  spec.email         = ["jkkealii@yahoo.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://www.myrubybyjosh.com"
  spec.license       = "MIT"

  spec.files         = ['lib/MyRuby.rb']
  spec.executables   = ['bin/MyRuby']
  spec.test_files    = ['tests/test_MyRuby.rb']
  spec.require_paths = ["lib"]
end
