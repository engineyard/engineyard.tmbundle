Given /^I have setup my engineyard email\/password for API access$/ do
  @token = "TOKEN"
  EY::API.save_token @token
end

When /^I have an "empty" app$/ do
  api_scenario "empty"
end

When /^I have "one app, one environment, not linked"$/ do
  api_scenario "one app, one environment, not linked"
end

When /^I have "one app, one environment"$/ do
  api_scenario "one app, one environment"
end

When /^I have "one app, one environment, app master red"$/ do
  api_scenario "one app, one environment, app master red"
end

When /^I have "one app, many environments"$/ do
  api_scenario "one app, many environments"
end

When /^I have "one app, many similarly-named environments"$/ do
  api_scenario "one app, many similarly-named environments"
end





