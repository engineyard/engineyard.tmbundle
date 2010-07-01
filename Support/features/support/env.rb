$:.unshift File.dirname(__FILE__) + "/../../lib/"
$:.unshift File.dirname(__FILE__) + "/../../bin/"

require "bundler"
Bundler.setup
Bundler.require :default
# require 'cucumber'
# require 'rspec'
# require 'escape'
# require 'fakeweb'
# require 'engineyard'
# require 'engineyard/cli'
# require 'json'

Before do
  @tmp_root = File.dirname(__FILE__) + "/../../tmp"
  @home_path = File.expand_path(File.join(@tmp_root, "home"))
  FileUtils.rm_rf   @tmp_root
  FileUtils.mkdir_p @home_path
  ENV['HOME'] = @home_path
  FakeWeb.allow_net_connect = false
end
