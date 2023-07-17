module Source2MD
  module Formatter
    class TypeSourceBlock < Base
      def self.accept?(element)
        element.body.start_with?("#+BEGIN_SRC")
      end

      def to_md
        CodeBlock.new(body, desc: code_block_desc).to_md
      end

      private

      def body
        element.body.match(/#\+BEGIN_SRC.*?\R(.*)#\+END_SRC/m).captures.first.strip
      end

      def code_block_desc
        if md = element.body.match(/#\+BEGIN_SRC(.+)/)
          md.captures.first.strip
        end
      end
    end
  end
end
