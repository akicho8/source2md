module Source2MD
  module Type
    class ElementUncomment < Base
      def self.accept?(element)
        if element.head.empty?
          element.body.lines.all? { |e| e.start_with?("# ") }
        end
      end

      def render
        body
      end

      private

      def body
        element.body.gsub(/^# /, "")
      end
    end
  end
end
