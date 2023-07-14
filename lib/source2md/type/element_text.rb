module Source2MD
  module Type
    class ElementText < Base
      def self.accept?(element)
        if element.head.empty?
          element.body.lines.all? { |e| e.start_with?("# ") }
        end
      end

      def to_md
        body
      end

      private

      def body
        element.body.gsub(/^# /, "")
      end
    end
  end
end
