Gem::Specification.new do |s|
  s.name        = 'leader'
  s.version     = '0.0.1'
  s.date        = '2013-01-17'
  s.summary     = "A simple wrapper for commands issued by foremans Procfile"
  s.description = "Say you want foreman to (among others) start mysql using your Procfile. What if you already have mysql running but you still want foreman to start all other applications? This is what leader is good fore. It will make foreman believe it successfully started mysql if mysql is already running on port xzy."
  s.authors     = %w{ funkensturm }
  s.executables = %w{ leader }
  s.files       = %w{ lib/leader.rb lib/leader/object_extensions.rb lib/leader/options.rb }
  s.homepage    = 'http://github.com/halo/leader'
end
