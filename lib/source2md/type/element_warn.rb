module Source2MD
  module Type
    class ElementWarn < Base
      def self.accept?(element)
        if element.body.empty?
          element.head[:warn]
        end
      end

      def render
        [
          ":::message",
          element.head[:warn],
          ":::",
        ] * "\n"
      end
    end
  end
end
