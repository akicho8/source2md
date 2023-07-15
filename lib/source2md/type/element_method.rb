module Source2MD
  module Type
    class ElementMethod < Base
      def self.accept?(element)
        element.head[:name]
      end

      def to_md
        [
          "### #{element.head[:name]} ###",
          element.head[:desc],
          body ? CodeBlock.new(body).to_md : nil,
          element.head[:comment],
        ].compact * "\n\n"
      end

      private

      def body
        element.body.gsub(/^\#$/, "").presence
      end
    end
  end
end
