engineyard_loaded_path = $:.select { |path| path =~ %r|engineyard| }.first
EY_ROOT = engineyard_loaded_path.gsub(%r|/\w+$|,'')

support = Dir[File.join(EY_ROOT,'/spec/support/*.rb')]
support.each{|helper| require helper }
World(Spec::Helpers)

ENV["NO_SSH"] = "true"
ENV['CLOUD_URL'] = EY.fake_awsm

Before do
  api_scenario "one app, one environment"
end

at_exit do
  ENV.delete('CLOUD_URL')
end