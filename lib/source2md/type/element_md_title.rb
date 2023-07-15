module Source2MD
  module Type
    class ElementMdTitle < Base
      def self.accept?(element)
        element.head.blank? && element.body.match?(/\A(#+)\s+.*\s+\1\z/)
      end

      def render
        element.body
      end
    end
  end
end
