module Source2MD
  module Type
    class ElementTitle3 < Base
      def self.accept?(element)
        element.head[:title3]
      end

      def to_md
        Source2MD.logger.warn { "title3: #{element.head[:title3]}" }
        "### #{element.head[:title3]} ###"
      end
    end
  end
end
