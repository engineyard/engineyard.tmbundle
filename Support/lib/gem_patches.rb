require "ext/engineyard/ui_ext"

unless Thor::Shell.const_defined?("HTML")
  require "ext/thor/shell_ext"
  require "ext/thor/shell/html"
end