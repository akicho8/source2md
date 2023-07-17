module Source2MD
  module Part
    class ElementMdTitle < Base
      def self.accept?(element)
        element.head.blank? && element.body.match?(/\A(#+)\s+.*\s+\1\z/)
      end

      def to_md
        element.body
      end
    end
  end
end
