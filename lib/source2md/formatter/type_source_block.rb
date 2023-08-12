module Source2MD
  module Formatter
    class TypeSourceBlock < Base
      def self.accept?(element)
        element.body.match?(%r{#{RE.meta_re}\+BEGIN_SRC})
      end

      def to_md
        if code_block_desc_keywords.include?("hidden!")
          return ""
        end
        CodeBlock.new(body, desc: code_block_desc).to_md
      end

      private

      def body
        element.body.match(%r{#{RE.meta_re}\+BEGIN_SRC.*?\R(.*)#{RE.meta_re}\+END_SRC}m).captures.first
      end

      def code_block_desc
        if md = element.body.match(%r{#{RE.meta_re}\+BEGIN_SRC (.+)\R})
          md.captures.first
        end
      end

      def code_block_desc_keywords
        code_block_desc.to_s.split(/\s+/).to_set
      end
    end
  end
end
