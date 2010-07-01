Given /^I have setup my engineyard email\/password for API access$/ do
  @token = "TOKEN"
  EY::API.save_token @token
  # ENV['EYRC'] = File.join(@home_path, ".eyrc")
end

Given /^I have engineyard applications$/ do
  apps = {"apps"=>[{"name"=>"myapp", "environments"=>[{"apps"=>[{"name"=>"myapp", "repository_uri"=>"git@github.fake:/drnic/somefakerepo.git", "id"=>6230}], "name"=>"oss8stepsapp_production", "instances"=>[{"public_hostname"=>"ec2-184-72-250-172.compute-1.amazonaws.com", "name"=>nil, "role"=>"solo", "amazon_id"=>"i-47d92c2d", "id"=>36613, "status"=>"error"}], "app_master"=>{"public_hostname"=>"ec2-184-72-250-172.compute-1.amazonaws.com", "name"=>nil, "role"=>"solo", "amazon_id"=>"i-47d92c2d", "id"=>36613, "status"=>"error"}, "framework_env"=>"production", "ssh_username"=>"deploy", "stack_name"=>"nginx_passenger", "id"=>8710, "instances_count"=>1}], "repository_uri"=>"git@github.fake:/drnic/somefakerepo.git", "id"=>6230}]}
  FakeWeb.register_uri(:get, EY.config.endpoint + "api/v2/apps", :body => apps.to_json)
end

