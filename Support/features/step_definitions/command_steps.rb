When /^I execute the "([^"]*)" engineyard command$/ do |command|
  require File.dirname(__FILE__) + "/../../bin/ey_command"
  @stdout = capture_stdio do
    execute_and_display(command)
  end
end

Then /^I should see deploy output$/ do
  @stdout.should =~ /Connecting to the server.../
  @stdout.should =~ /Beginning deploy for 'rails232app' in 'giblets' on server.../
  @stdout.should =~ /Deploy complete/
end

Then /^I should see rebuild output$/ do
  pending
end

Then /^I should see logs output$/ do
  @stdout.should =~ /MAIN LOG OUTPUT/
  @stdout.should =~ /CUSTOM LOG OUTPUT/
end

