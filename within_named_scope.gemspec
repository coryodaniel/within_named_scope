$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "within_named_scope/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "within_named_scope"
  s.version     = WithinNamedScope::VERSION
  s.authors     = ["Cory ODaniel"]
  s.email       = ["within_named_scope@coryodaniel.com"]
  s.homepage    = "http://github.com/coryodaniel/within_named_scope"
  s.description = s.summary     = "Determine if an activerecord instance is within a named scope."
   
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.2.0"

  s.add_development_dependency "sqlite3"
end
