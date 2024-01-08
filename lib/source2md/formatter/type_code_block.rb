module Source2MD
  module Formatter
    class TypeCodeBlock < Base

      # "# ```"
      def self.regexp
        %r{#{RE.meta_re}\s+```}
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
