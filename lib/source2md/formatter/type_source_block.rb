module Source2MD
  module Formatter
    class TypeSourceBlock < Base
      def self.accept?(element)
        element.body.match?(%r{#{RE.meta_re}\+BEGIN_SRC})
      end

      def to_md
        if desc_options.include?("hidden!")
          return ""
        end
        CodeBlock.new(body, desc: clean_descs.join(" ").presence).to_md
      end

      private

      def body
        content = element.body.match(%r{#{RE.meta_re}\+BEGIN_SRC.*?\R(.*)#{RE.meta_re}\+END_SRC}m).captures.first
        data_block_exclude(content)
      end

      def desc_line
        if md = element.body.match(%r{#{RE.meta_re}\+BEGIN_SRC (.+)\R})
          md.captures.first
        end
      end

      def desc_options
        @desc_options ||= desc_line.to_s.split(/\s+/).to_set
      end

      def data_block_exclude(content)
        if data_block_exclude?
          TextHelper.data_block_exclude(content)
        else
          content
        end
      end

      def data_block_exclude?
        desc_options.include?("data_block_exclude") || Source2MD.data_block_exclude
      end

      def clean_descs
        desc_options - ["data_block_exclude"]
      end
    end
  end
end
