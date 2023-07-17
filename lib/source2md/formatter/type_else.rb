module Source2MD
  module Formatter
    class TypeElse < Base
      def self.accept?(element)
        true
      end

      def to_md
        p "-" * 80
        p element.head
        p element.body
        p element
        p "-" * 80
        abort
      end
    end
  end
end
