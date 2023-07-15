module Source2MD
  module Type
    class ElementPartialCode < Base
      def self.accept?(element)
        !element.body.empty?
      end

      def render
        CodeBlock.new(element.body).to_md
      end
    end
  end
end
