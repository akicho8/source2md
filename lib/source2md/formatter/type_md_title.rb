module Source2MD
  module Formatter
    class TypeMdTitle < Base
      def self.accept?(element)
        # element.head.blank? && element.body.match?(%r{(#+)\s+.*\s+\1})
      end

      def to_md
        element.body
      end
    end
  end
end
