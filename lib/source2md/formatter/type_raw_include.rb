module Source2MD
  module Formatter
    class TypeRawInclude < Base
      def self.accept?(element)
        element.head["raw_include"]
      end

      def to_md
        s = Pathname(element.head["raw_include"]).expand_path.read
        TextHelper.eol_enter(s)
      end
    end
  end
end
