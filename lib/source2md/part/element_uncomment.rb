module Source2MD
  module Part
    class ElementUncomment < Base
      REGEXP = /^#( |$)/

      def self.accept?(element)
        if element.head.empty?
          # "# xxx\n" or "#\n"
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
