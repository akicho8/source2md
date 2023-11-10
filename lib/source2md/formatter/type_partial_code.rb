module Source2MD
  module Formatter
    class TypePartialCode < Base
      def self.accept?(element)
        !element.body.empty?
      end

      def to_md
        CodeBlock.new(body, code_block_options).to_md
      end

      private

      def body
        if Source2MD.data_block_exclude
          element.body.sub(/^__END__\R.*/m, "")
        else
          element.body
        end
      end

      def code_block_options
        {
          lang: element.head["partial_code_lang"],
          name: element.head["partial_code_name"],
          desc: element.head["partial_code_desc"],
        }
      end
    end
  end
end
