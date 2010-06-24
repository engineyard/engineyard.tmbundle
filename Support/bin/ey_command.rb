#!/usr/bin/env ruby

$:.unshift(File.dirname(__FILE__) + "/../lib")

require "ey_command_helper"
include EyCommandHelper

fix_load_paths
render_header
setup_ok?
select_environment
run_command