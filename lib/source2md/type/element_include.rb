module Source2MD
  module Type
    class ElementInclude < Base
      def self.accept?(element)
        element.head[:include]
      end

      def to_md
        CodeBlock.new(body, code_block_options).to_md
      end

      private

      def path
        Pathname(element.head[:include]).expand_path
      end

      def body
        path.read.strip
      end

      def code_block_options
        options = element.head.dup
        options[:lang] ||= auto_lang
        options[:name] ||= path.basename
        options
      end

      def auto_lang
        {
          ".yml" => "yaml",
        }.fetch(path.extname) {
          path.extname.scan(/\w+/).first
        }
      end
    end
  end
end
