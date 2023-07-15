module Source2MD
  module Type
    class ElementDeepComment < Base
      def self.accept?(element)
        element.body.match?(/^##/)
      end

      def render
        CodeBlock.new(body).to_md
      end

      private

      def body
        element.body.gsub(/^##/, "#")
      end
    end
  end
end
