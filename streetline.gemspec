# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'streetline/version'

Gem::Specification.new do |s|
  s.name          = "streetline"
  s.version       = Streetline::VERSION
  s.authors       = ["Philippe Dionne"]
  s.email         = ["dionne.phil@gmail.com"]
  s.homepage      = "https://github.com/phildionne/streetline"
  s.licenses      = ['MIT']
  s.summary       = "Ruby client for the Streetline API"
  s.description   = "Ruby client for the Streetline API"

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
  s.test_files    = s.files.grep(%r{^(spec)/})

  s.add_dependency 'faraday', '~> 0.8'
  s.add_dependency 'faraday_middleware'
  s.add_dependency 'activesupport', '>= 3.2.14'
end
