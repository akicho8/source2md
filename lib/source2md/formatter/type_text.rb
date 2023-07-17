module Source2MD
  module Formatter
    class TypeText < Base
      # "# xxx"
      # "#"
      REGEXP = /^#( |$)/

      def self.accept?(element)
        element.body.lines.all? { |e| e.match?(REGEXP) }
      end

      def to_md
        body
      end

      private

      def body
        s = element.body.remove(REGEXP)
        s = oneline(s)
      end

      def oneline(s)
        if element.head["oneline"] == "true"
          s = TextHelper.oneline(s)
        end
        s
      end
    end
  end
end
