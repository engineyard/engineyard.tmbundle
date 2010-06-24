module EY
  class CLI
    class UI < Thor::Base.shell
      def set_color(string, color, bold=false)
        ($stdout.tty? || ENV['THOR_SHELL']) ? super : string
      end
    end
  end
end