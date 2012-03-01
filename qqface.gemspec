$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "qqface/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "qqface"
  s.version     = Qqface::VERSION
  s.authors     = ["WeekFace"]
  s.email       = ["weekface@gmail.com"]
  s.homepage    = "http://weekface.github.com"
  s.summary     = "add qq face to your application."
  s.description = "add qq face to your application."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.markdown"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.0"

  s.add_development_dependency "sqlite3"
  s.homepage    = 'http://rubygems.org/gems/qqface'
end