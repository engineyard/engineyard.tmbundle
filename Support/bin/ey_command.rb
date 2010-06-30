#!/usr/bin/env ruby

$:.unshift(File.dirname(__FILE__) + "/../lib")

require "ey_command_helper"
include EyCommandHelper

def execute_and_display(command)
  fix_load_paths
  render_header
  setup_ok?
  select_environment
  run_command command
end

if __FILE__ == $PROGRAM_NAME
  execute_and_display(ARGV.first)
end