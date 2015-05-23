Gem::Specification.new do |s|
  s.name        = 'rapiflash'
  s.version     = '0.1.1'
  s.date        = '2010-04-28'
  s.summary     = "Wraps Rapiflash API into a Ruby gem"
  s.description = "This gem is a wrapper of the Rapiflash API and allows developers to gather data from Rapiflash devices around the world."
  s.authors     = ["Devin Mui"]
  s.email       = 'devinmui@yahoo.com'
  s.files       = ["lib/rapiflash.rb"]
  s.license       = 'MIT'
  s.add_dependency "faraday"
  s.add_dependency "json"
end