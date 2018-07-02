lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
   s.name          = 'kele'
   s.version       = Kele::VERSION
   s.date          = '2018-06-25'
   spec.summary       = %q{A Ruby Gem to access Bloc API.}
   spec.description   = %q{A Ruby Gem to access Bloc API for data such as users, checkpoints, and mentor availability.}
   spec.homepage      = "http://rubygems.org/gems/kele"
   s.authors       = ['Devin Tassie']
   s.email         = ['devintassie@gmail.com']
   s.files = ['lib/kele.rb']
   s.require_paths = ["lib"]
   s.license       = 'MIT'
   s.add_runtime_dependency 'httparty', '~> 0.13'
   spec.add_development_dependency "rake", "~> 10.0"
   spec.add_development_dependency "rspec", "~> 3.0"
   spec.add_runtime_dependency 'json'
 end