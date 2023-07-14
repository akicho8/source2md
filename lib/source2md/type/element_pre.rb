module Source2MD
  module Type
    class ElementPre < Base
      def self.accept?(element)
        !element.body.empty?
      end

      def to_md
        CodeBlock.new(element.body).to_md
      end
    end
  end
end
