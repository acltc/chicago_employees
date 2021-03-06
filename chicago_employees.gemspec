# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chicago_employees/version'

Gem::Specification.new do |spec|
  spec.name          = "chicago_employees"
  spec.version       = ChicagoEmployees::VERSION
  spec.authors       = ["Jay Wengrow"]
  spec.email         = ["jaywngrw@gmail.com"]
  spec.summary       = %q{A Ruby wrapper to obtain data regarding City of Chicago Employees.}
  spec.description   = %q{A Ruby wrapper to obtain data regarding City of Chicago Employees.}
  spec.homepage      = "https://github.com/acltc/chicago_employees"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency "unirest", "~> 1.1.2"
end
