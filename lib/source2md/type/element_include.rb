module Source2MD
  module Type
    class ElementInclude < Base
      def self.accept?(element)
        element.head[:include]
      end

      def initialize(...)
        super

        @user_define_path, @desc = element.head[:include].split(/\s+/, 2)
      end

      def render
        CodeBlock.new(body, code_block_options).to_md
      end

      private

      def path
        Pathname(@user_define_path).expand_path
      end

      def body
        path.read.strip
      end

      def code_block_options
        options = element.head.dup
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
