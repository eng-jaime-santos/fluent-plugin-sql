# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-sql"
  gem.description = "SQL input/output plugin for Fluentd event collector"
  gem.homepage    = "https://github.com/fluent/fluent-plugin-sql"
  gem.summary     = gem.description
  gem.version     = File.read("VERSION").strip
  gem.authors     = ["Sadayuki Furuhashi"]
  gem.email       = "frsyuki@gmail.com"
  #gem.platform    = Gem::Platform::RUBY
  gem.files       = Dir['./**/*']
  gem.require_paths = ['lib']
  gem.license = "Apache-2.0"

  gem.add_dependency "fluentd", [">= 1.7.0", "< 2"]
  gem.add_dependency 'activerecord', "~> 6.1"
  gem.add_dependency 'activerecord-import', "~> 1.0"
  gem.add_development_dependency "rake", ">= 0.9.2"
  gem.add_development_dependency "test-unit", "> 3.1.0"
  gem.add_development_dependency "test-unit-rr"
  gem.add_development_dependency "test-unit-notify"
  gem.add_development_dependency "pg", '~> 1.0'
end
