# encoding: utf-8
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'shipnow'

require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/byebug' if ENV['DEBUG']
require 'httplog' if ENV['LOG']

# Minitest Reporter config
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]
