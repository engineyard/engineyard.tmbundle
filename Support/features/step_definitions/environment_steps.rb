When /^I select the last environment in the list$/ do
  # currently hard coded into ui.rb's #menu method
end

Then /^I should be asked to first set my environment$/ do
  @stderr.should =~ /Unable to determine a single environment for the current application \(found 2 environments\)/
end

Then /^I should be in the "([^"]*)" environment$/ do |environment|
  Nokogiri::HTML(@stdout).search("#framework_env").text.should == environment
end


