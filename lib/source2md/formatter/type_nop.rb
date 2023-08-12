module Source2MD
  module Formatter
    class TypeNop < Base
      def self.accept?(element)
        element.head["nop"]
      end

      def to_md
        ""
      end
    end
  end
end
