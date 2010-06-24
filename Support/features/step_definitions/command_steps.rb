When /^I execute the "([^"]*)" engineyard command$/ do |command|
  script = File.expand_path(File.dirname(__FILE__) + "/../../bin/ey_command.rb")
  in_project_folder do
    @stdout = %x[ #{Escape.shell_command(["ruby", script, command])} ]
  end
  puts @stdout
end
