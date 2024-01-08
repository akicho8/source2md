module Source2MD
  module Formatter
    class TypeQuote < Base
      def self.regexp
        /#{RE.meta_re}\s+\>\s+\S+/
      end

      def self.accept?(element)
        element.body.match(regexp)
      end

      def to_md
        element.body.remove(TypeText.regexp)
      end
    end
  end
end
