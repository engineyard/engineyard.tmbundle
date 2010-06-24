$:.unshift File.dirname(__FILE__) + "/../../lib/"
$:.unshift File.dirname(__FILE__) + "/../../bin/"

require 'cucumber'
require 'rspec'
require 'escape'

Before do
  @tmp_root = File.dirname(__FILE__) + "/../../tmp"
  @home_path = File.expand_path(File.join(@tmp_root, "home"))
  FileUtils.rm_rf   @tmp_root
  FileUtils.mkdir_p @home_path
  ENV['HOME'] = @home_path
end
