When /^I execute the "([^"]*)" engineyard command$/ do |command|
  require File.dirname(__FILE__) + "/../../bin/ey_command"
  # insert fake TextMate::UI via unshift fake $TM_SUPPORT_PATH folder
  $:.unshift(File.dirname(__FILE__) + "/../textmate")
  @stdout, @stderr = capture_stdios do
    begin
      @system_exit = false
      execute_and_display(command)
    rescue SystemExit
      @system_exit = true
    end
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

