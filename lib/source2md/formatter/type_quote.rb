module Source2MD
  module Formatter
    class TypeQuote < Base
      def self.regexp
        /#{RE.meta_re}\s+\>\s+\S+/
      end

      def self.accept?(element)
        if element.body.present?
          element.body.lines.all? { |e| e.match?(regexp) }
        end
      end

      def to_md
        element.body.remove(TypeText.regexp)
      end
    end
  end
end
