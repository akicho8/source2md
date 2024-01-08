module Source2MD
  module Formatter
    class TypeList < Base

      # "# 1. foo"
      # "# - foo"
      def self.regexp
        %r{#{RE.meta_re}\s+(?:\d\.|-)\s+\S+}
      end

      def self.accept?(element)
        element.body.match?(regexp)
      end

      def to_md
        element.body.remove(TypeText.regexp)
      end
    end
  end
end
