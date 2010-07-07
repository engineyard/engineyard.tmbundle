require "bundler"
Bundler.setup

require "choctop"

ChocTop::Configuration.new do |s|
  s.name = 'Engine Yard.tmbundle'
  
  s.add_root :position => [290, 200], :exclude => %w[build .bundle .git]
  s.add_link 'http://github.com/engineyard/engineyard.tmbundle', 'GitHub', :position => [520, 200]

  s.background_file = 'Support/dmg/engineyard.tmbundle.dmg.png'
  s.volume_icon     = 'Support/dmg/engineyard.dmg.icns'

  # Remote upload target (set host if not same as Info.plist['SUFeedURL'])
  # s.host     = 'support.com'
  s.remote_dir = '/path/to/upload/root/of/app'

end

require 'cucumber'
require 'cucumber/rake/task'

namespace :cucumber do
  Cucumber::Rake::Task.new(:ok) do |t|
    t.cucumber_opts = "--format progress"
  end
end

desc "Run features"
task :default => :"cucumber:ok"

