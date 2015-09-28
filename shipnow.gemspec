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

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'minitest-byebug'
  spec.add_development_dependency 'minitest-reporters'
  spec.add_development_dependency 'httplog'
end
