Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'antzoom_deal_content'
  s.version     = '0.50.99'
  s.summary     = 'Add deals contents for RESTS Users via mobile'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'KimWee Chan (Thomas)'
  s.email             = 'thomasjoyce@gmail.com'
  s.homepage          = 'http://www.antzoom.com'
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 0.50.99')
end
