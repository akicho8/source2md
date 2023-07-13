module Source2MD
  module Type
    class ElementTitle2 < Base
      def self.accept?(element)
        element.head[:title2]
      end

      def to_md
        unless Source2MD.quiet
          p element.head[:title2]
        end
        "## #{element.head[:title2]}"
      end
    end
  end
end
