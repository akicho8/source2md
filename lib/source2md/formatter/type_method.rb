module Source2MD
  module Formatter
    class TypeMethod < Base
      def self.accept?(element)
        element.head["name"]
      end

      def to_md
        [
          "### #{element.head["name"]} ###",
          element.head["desc"],
          CodeBlock.new(body).to_md,
          element.head["comment"],
        ].compact * "\n\n"
      end

      private

      def body
        element.body.gsub(/^\#$/, "")
      end
    end
  end
end
