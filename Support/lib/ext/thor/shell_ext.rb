class Thor
  module Base
    def self.shell
      @shell ||= if ENV['THOR_SHELL'] && ENV['THOR_SHELL'].size > 0
        Thor::Shell.const_get(ENV['THOR_SHELL'])
      elsif Config::CONFIG['host_os'] =~ /mswin|mingw/
        Thor::Shell::Basic
      else
        Thor::Shell::Color
      end
    end
  end
end