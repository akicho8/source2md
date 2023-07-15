module Source2MD
  module Type
    class ElementReject < Base
      def self.accept?(element)
        element.body.match?(/^require.*setup/)
      end

      def render
      end
    end
  end
end
