When /^I execute the "([^"]*)" engineyard command$/ do |command|
  require File.dirname(__FILE__) + "/../../bin/ey_command"
  execute_and_display(command)
  # @stdout = capture_stdout do
  #   execute_and_display(command)
  # end
  # puts @stdout
end
