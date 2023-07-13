module Source2MD
  module Type
    class ElementTitle2 < Base
      def self.accept?(element)
        element.head[:title2]
      end

      def to_md
        Source2MD.logger.info { "title2: #{element.head[:title2]}" }
        "## #{element.head[:title2]} ##"
      end
    end
  end
end
