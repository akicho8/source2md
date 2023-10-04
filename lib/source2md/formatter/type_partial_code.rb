module Source2MD
  module Formatter
    class TypePartialCode < Base
      def self.accept?(element)
        !element.body.empty?
      end

      def to_md
        CodeBlock.new(body, name: element.head["code_block_name"]).to_md
      end

      private

      def body
        if Source2MD.data_block_exclude
          element.body.sub(/^__END__\R.*/m, "")
        else
          element.body
        end
      end
    end
  end
end
