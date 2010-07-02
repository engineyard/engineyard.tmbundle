engineyard_loaded_path = $:.select { |path| path =~ %r|engineyard| }.first
EY_ROOT = engineyard_loaded_path.gsub(%r|/\w+$|,'')

support = Dir[File.join(EY_ROOT,'/spec/support/*.rb')]
support.each{|helper| require helper }
World(Spec::Helpers)

# temporary monkey patch
module EY
  class Repo
    def urls
      lines = `git config -f #{Escape.shell_command(@path)}/.git/config --get-regexp 'remote.*.url'`.split(/\n/)
      raise NoRemotesError.new(@path) if lines.empty?
      lines.map { |c| c.split.last }
    end
  end # Repo
end # EY


ENV["NO_SSH"] = "true"
ENV['CLOUD_URL'] = EY.fake_awsm

at_exit do
  ENV.delete('CLOUD_URL')
end