module Source2MD
  module Formatter
    class TypeSet < Base
      def self.accept?(element)
        element.head["set"]
      end

      def to_md
        eval(element.head["set"])
        ""
      end
    end
  end
end
