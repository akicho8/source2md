module Source2MD
  module Type
    class ElementSourceBlock < Base
      def self.accept?(element)
        element.body.start_with?("#+BEGIN_SRC")
      end

      def to_md
        CodeBlock.new(body).to_md
      end

      private

      def body
        element.body.match(/#\+BEGIN_SRC(.*)#\+END_SRC/m).captures.first.strip
      end
    end
  end
end
