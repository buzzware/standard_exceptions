# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'standard_exceptions/version'

Gem::Specification.new do |spec|
  spec.name          = "standard_exceptions"
  spec.version       = StandardExceptions::VERSION
  spec.authors       = ["Gary McGhee"]
  spec.email         = ["contact@buzzware.com.au"]

  spec.summary       = %q{This is a library of standard exceptions for any project, and nothing else.}
  spec.description   = %q{There is great benefit in adopting a standard library of exceptions. Projects and libraries can all assume the same set of exception classes will be raised and caught using the built in language rescue keyword which filters on class. It becomes especially powerful for building API's, where specific exception classes can be made to return specific HTTP status codes. This libary also provides helper bang-methods eg. unauthorised! for raising these standard kinds of errors}
  spec.homepage      = "http://standardexceptions.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
