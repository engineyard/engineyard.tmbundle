#!/usr/bin/env ruby

require "ey_command_helper"
include EyCommandHelper

fix_load_paths
render_header
setup_ok?
select_environment
run_command