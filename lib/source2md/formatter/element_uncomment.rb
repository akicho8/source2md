module Source2MD
  module Formatter
    class ElementUncomment < Base
      # "# xxx"
      # "#"
      REGEXP = /^#( |$)/

      def self.accept?(element)
        if element.head.empty?
          element.body.lines.all? { |e| e.match?(REGEXP) }
        end
      end

      def to_md
        body
      end

      private

      def body
        element.body.remove(REGEXP)
      end
    end
  end
end
