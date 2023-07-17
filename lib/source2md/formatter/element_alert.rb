module Source2MD
  module Formatter
    class ElementAlert < Base
      def self.accept?(element)
        element.head["alert"]
      end

      def to_md
        [
          ":::message alert",
          element.head["alert"],
          ":::",
        ] * "\n"
      end
    end
  end
end
