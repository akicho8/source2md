module Source2MD
  module Formatter
    class TypeCodeInclude < Base
      def self.accept?(element)
        element.head["code_include"]
      end

      def initialize(...)
        super

        @user_define_path, @desc = element.head["code_include"].split(/\s+/, 2)
      end

      def to_md
        CodeBlock.new(body, code_block_options).to_md
      end

      private

      def path
        Pathname(@user_define_path).expand_path
      end

      def body
        TextHelper.eol_enter(path.read)
      end

      def code_block_options
        options = element.head.dup.to_options
        options[:desc] ||= @desc
        options[:lang] ||= auto_lang
        options[:name] ||= path.basename
        options
      end

      def auto_lang
        {
          # ".foo" => "bar",
        }.fetch(path.extname) {
          path.extname.scan(/\w+/).first
        }
      end
    end
  end
end
