$:.push File.expand_path("../lib", __FILE__)

require 'ratio'

Gem::Specification.new do |s|
  s.name = "ratio"
  s.version = Ratio::VERSION

  s.authors = ["Matthias Grosser"]
  s.date = "2014-02-19"
  s.description = 'Rationals without reduction'
  s.email = "mtgrosser@gmx.net"
  s.homepage = "http://github.com/mtgrosser/ratio"
  s.files = Dir['{lib}/**/*.rb', 'LICENSE', 'README.md', 'CHANGELOG']
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Rationals without reduction"
  s.license = 'MIT'

  s.add_development_dependency(%q<byebug>, [">= 0"])
  s.add_development_dependency(%q<simplecov>, [">= 0"])
  s.add_development_dependency(%q<rake>, [">= 0.8.7"])
  s.add_development_dependency(%q<minitest>, ["~> 4.7"])
  s.add_development_dependency(%q<timecop>, ["~> 0.6.3"])
end
