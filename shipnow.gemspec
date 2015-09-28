# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shipnow/version'

Gem::Specification.new do |spec|
  spec.name          = "shipnow"
  spec.version       = Shipnow::VERSION
  spec.authors       = ["GoodPeople"]
  spec.email         = ["dev@goodpeople.com"]

  spec.summary       = %q{Ruby client for the ShipNow API}
  spec.description   = %q{This gem allows developers to use the services available in the ShipNow API (http://www.shipnow.com.ar)}
  spec.homepage      = "https://github.com/goodpeople/shipnow-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry', "~> 0.10"
  spec.add_development_dependency 'byebug', "~> 5.0"
  spec.add_development_dependency 'pry-byebug', "~> 3.2"
  spec.add_development_dependency 'minitest', "~> 5.8"
  spec.add_development_dependency 'minitest-byebug', '~> 0.0'
  spec.add_development_dependency 'minitest-reporters', "~> 1.1"
  spec.add_development_dependency 'httplog', "~> 0.2"
end
