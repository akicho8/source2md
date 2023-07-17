module Source2MD
  module Formatter
    class TypeTitle < Base
      REGEXP = /\Atitle(\d+)\z/

      def self.accept?(element)
        element.head.keys.any? { |e| e.match?(REGEXP) }
      end

      def to_md
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
