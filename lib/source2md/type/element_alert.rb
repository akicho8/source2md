module Source2MD
  module Type
    class ElementAlert < Base
      def self.accept?(element)
        element.head[:alert]
      end

      def render
        [
          ":::message alert",
          element.head[:alert],
          ":::",
        ] * "\n"
      end
    end
  end
end
