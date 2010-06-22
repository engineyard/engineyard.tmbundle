#!/usr/bin/env ruby

# Due to need for escape gem, which name clashes with Textmate Support libs,
# Moving the Text
tm_support = $:.select { |path| path =~ %r{SharedSupport/Support/lib} }.first
$:.reject! { |path| path =~ %r{SharedSupport/Support/lib} }
$: << tm_support if tm_support

# Render output header
view = File.dirname(__FILE__) + "/../views/results_prefix.html"
print File.read(view)
$stdout.flush

require "fileutils"
begin
  require "rubygems"
  require "engineyard/cli"
rescue LoadError => e
  puts <<-HTML
  </pre>
  <div class="message">
    <div class="error">Please install engineyard gem</div>
    <pre>gem install engineyard</pre>
  </div>
  HTML
  exit
end

unless ENV['TM_PROJECT_DIRECTORY'] && File.exist?(ENV['TM_PROJECT_DIRECTORY'])
  puts <<-HTML
  </pre>
  <div class="message">
    <div class="error">Run only from a project</div>
    <p>The Engine Yard commands are for git-based, rack/rails projects</p>
  </div>
  HTML
  exit
end  

ENV['THOR_SHELL'] = 'HTML'
FileUtils.cd(ENV['TM_PROJECT_DIRECTORY'])

begin
  EY::CLI.start
rescue EY::Error => e
  EY.ui.print_exception(e)
  exit(1)
rescue Interrupt => e
  puts
  EY.ui.print_exception(e)
  EY.ui.say("Quitting...")
  exit(1)
end

# command = ARGV.shift
# case command.to_sym
# when :deploy
# when :rebuild
# when :logs
# end
# 
