# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongodb_logger/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Alexey Vasiliev"]
  gem.email         = ["leopard.not.a@gmail.com"]
  gem.description   = %q{MongoDB logger for Rails}
  gem.summary       = %q{MongoDB logger for Rails}
  gem.homepage      = "http://mongodb-logger.catware.org"

  gem.extra_rdoc_files  = [ "LICENSE", "README.md" ]
  gem.rdoc_options      = ["--charset=UTF-8"]
  gem.licenses          = ["MIT"]

  gem.add_development_dependency "rspec", ">= 3"
  gem.add_development_dependency "rspec-rails", ">= 3"
  gem.add_development_dependency "cucumber", "~> 1.3.10"
  gem.add_development_dependency "cucumber-rails", "~> 1.4.0"
  gem.add_development_dependency "capybara", '~> 2.2.1'
  gem.add_development_dependency "appraisal", "~> 0.5.2"
  gem.add_development_dependency "aruba", "~> 0.5.4"
  # for tests deps
  gem.add_development_dependency "coffee-script", "~> 2.2"
  gem.add_development_dependency "mongo", "~> 1.10"
  #gem.add_development_dependency "moped", "2.0.0.beta6"

  gem.add_dependency "rake",            "~> 10.0"
  gem.add_dependency "multi_json",      ">= 1.8"
  gem.add_dependency "activesupport",   ">= 3.1.0"
  gem.add_dependency "sprockets",       "3.7.2"
  # Rails 5 requires sinatra/master
  # https://github.com/sinatra/sinatra/issues/1135
  # gem.add_dependency "sinatra",         ">= 1.3"
  gem.add_dependency "erubis",          "~> 2.7"
  gem.add_dependency "mustache",        "~> 0.99"
  gem.add_dependency "vegas",           "~> 0.1.8"

  gem.bindir        = 'exe'
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  gem.name          = "mongodb_logger"
  gem.require_paths = ["lib"]
  gem.version       = MongodbLogger::VERSION
end
