module Source2MD
  module Formatter
    class TypeEval < Base
      def self.accept?(element)
        element.head["eval"]
      end

      def to_md
        eval(element.head["eval"])
        ""
      end
    end
  end
end
