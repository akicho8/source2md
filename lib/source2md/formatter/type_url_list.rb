module Source2MD
  module Formatter
    class TypeUrlList < Base

      # "# http.*"
      def self.regexp
        %r{#{RE.meta_re}\s+(?:http)}
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
