module Source2MD
  module Type
    class ElementTitle < Base
      REGEXP = /\Atitle(\d+)\z/

      def self.accept?(element)
        element.head.keys.any? { |e| e.match?(REGEXP) }
      end

      def render
        s = [prefix, body, prefix] * " "
        Source2MD.logger.warn { s }
        s
      end

      private

      def body
        element.head[key]
      end

      def level
        key.to_s.remove(/\D+/).to_i
      end

      def prefix
        "#" * level
      end

      def key
        @key ||= element.head.keys.find { |e| e.match?(REGEXP) }
      end
    end
  end
end
