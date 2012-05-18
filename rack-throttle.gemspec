#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

$: << File.dirname(__FILE__) + "/lib"

require 'rack/throttle/version'

Gem::Specification.new do |gem|
  gem.version            = Rack::Throttle::VERSION.to_s
  gem.date               = Date.today.to_s

  gem.name               = 'rack-throttle'
  gem.homepage           = 'http://github.com/rapind/rack-throttle'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'HTTP request rate limiter for Rack applications.'
  gem.description        = 'Rack middleware for rate-limiting incoming HTTP requests.'
  gem.rubyforge_project  = 'datagraph'

  gem.authors            = ['Arto Bendiken', 'Brendon Murphy']
  gem.email              = 'arto.bendiken@gmail.com'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS README UNLICENSE) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w()
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 1.8.2'
  gem.requirements               = []
  gem.add_development_dependency 'rack-test', '0.5.3'
  gem.add_development_dependency 'rspec',     '1.3.0'
  gem.add_development_dependency 'yard' ,     '>= 0.5.5'
  gem.add_development_dependency 'timecop',   '0.3.4'
  gem.add_runtime_dependency     'rack',      '>= 1.0.0'
  gem.post_install_message       = nil
end
