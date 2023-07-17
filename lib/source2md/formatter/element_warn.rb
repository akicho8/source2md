module Source2MD
  module Formatter
    class ElementWarn < Base
      def self.accept?(element)
        if element.body.empty?
          element.head["warn"]
        end
      end

      def to_md
        [
          ":::message",
          element.head["warn"],
          ":::",
        ] * "\n"
      end
    end
  end
end
