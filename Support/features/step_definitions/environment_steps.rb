When /^I select one of the environments$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be asked to first set my environment$/ do
  @stderr.should =~ /Unable to determine a single environment for the current application \(found 2 environments\)/
end

