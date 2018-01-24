$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chemex/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "chemex"
  s.version     = Chemex::VERSION
  s.authors     = ["Procore Technologies"]
  s.email       = ["dev@procore.com"]
  s.homepage    = "https://github.com/procore/chemex"
  s.summary     = "Summary of Chemex."
  s.description = "Easily write arbitrary filters"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*",
                "MIT-LICENSE",
                "Rakefile",
                "README.md"]

  s.required_ruby_version = ">= 2.3.0"

  s.add_dependency "rails", "> 4.2.0"

  s.add_development_dependency "pry"
  s.add_development_dependency "rake"
  s.add_development_dependency "rubocop"
  s.add_development_dependency "sqlite3"
end