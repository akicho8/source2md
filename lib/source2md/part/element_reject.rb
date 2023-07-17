module Source2MD
  module Part
    class ElementReject < Base
      def self.accept?(element)
        element.body.match?(/^require.*setup/)
      end

      def to_md
      end
    end
  end
end
