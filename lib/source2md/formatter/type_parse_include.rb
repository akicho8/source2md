module Source2MD
  module Formatter
    class TypeParseInclude < Base
      def self.accept?(element)
        element.head["parse_include"]
      end

      def to_md
        Generator.new(files: element.head["parse_include"]).to_md.strip
      end
    end
  end
end
