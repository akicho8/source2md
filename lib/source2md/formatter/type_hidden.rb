module Source2MD
  module Formatter
    class TypeHidden < Base
      def self.accept?(element)
        element.head["hidden"] == "true"
      end

      def to_md
        ""
      end
    end
  end
end
