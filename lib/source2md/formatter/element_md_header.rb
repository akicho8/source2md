module Source2MD
  module Formatter
    class ElementMdHeader < Base
      def self.accept?(element)
        element.body.to_s.start_with?("---")
      end

      def to_md
        element.body
      end
    end
  end
end
