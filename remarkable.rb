gem "remarkable_rails", :lib => false, :env => :test

rake "gems:install", :sudo => use_sudo?

gsub_file 'spec/spec_helper.rb', /(require 'spec\/rails'.*)/, "\\1\nrequire 'remarkable_rails'"

git :add => '.'
git :commit => "-a -m 'Added Remarkable support for testing.'"