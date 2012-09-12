# -*- encoding: utf-8 -*-
require File.expand_path('../lib/validates_as_mobile/version', __FILE__)

Gem::Specification.new do |s|
  s.authors       = ["Sergey Polischuk"]
  s.email         = ["mayorserega@gmail.com"]
  s.description   = %q{This is simple validator for Russian mobile numbers.}
  s.summary       = %q{Validator for Russian mobile numbers}
  s.homepage      = "https://github.com/palya/validates_as_mobile"
  
  s.rubyforge_project = "validates_as_mobile"

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.name          = "validates_as_mobile"
  s.require_paths = ["lib"]
  s.version       = ValidatesAsMobile::VERSION
end
