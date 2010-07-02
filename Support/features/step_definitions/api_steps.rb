Given /^I have setup my engineyard email\/password for API access$/ do
  @token = "TOKEN"
  EY::API.save_token @token
end
