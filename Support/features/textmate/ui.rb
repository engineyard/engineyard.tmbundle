# fake version of TextMate's Support/lib/ui.rb file
module TextMate
  module UI
    class << self
      # Currently hard-wired for selecting the last item from a list of environments
      def menu(options)
        return nil if options.empty?
        options.size - 1
      end
    end
  end
end