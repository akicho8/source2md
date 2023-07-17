module Source2MD
  module Formatter
    class TypeRawInclude < Base
      def self.accept?(element)
        element.head["raw_include"]
      end

      def to_md
        Pathname(element.head["raw_include"]).expand_path.read.strip
      end
    end
  end
end
