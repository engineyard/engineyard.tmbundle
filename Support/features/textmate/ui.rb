# fake version of TextMate's Support/lib/ui.rb file
module TextMate
  module UI
    class << self
      def menu(options)
        return nil if options.empty?
        raise NotImplementedError
      end
    end
  end
end