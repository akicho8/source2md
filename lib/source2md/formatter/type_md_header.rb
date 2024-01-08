module Source2MD
  module Formatter
    class TypeMdHeader < Base
      def self.regexp
        /#{RE.meta_re} ---\n.* ---\n/m
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
