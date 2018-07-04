

Gem::Specification.new do |s|
   s.name          = 'kele'
   s.version       = '0.1.0'
   s.date          = '2018-06-25'
   s.summary       = %q{A Ruby Gem to access Bloc API.}
   s.description   = %q{A Ruby Gem to access Bloc API for data such as users, checkpoints, and mentor availability.}
   s.homepage      = "http://rubygems.org/gems/kele"
   s.authors       = ['Devin Tassie']
   s.email         = ['devintassie@gmail.com']
   s.files = ['lib/kele.rb', 'lib/roadmap.rb']
   s.require_paths = ["lib"]
   s.license       = 'MIT'
   s.add_runtime_dependency 'httparty', '~> 0.13'
 end