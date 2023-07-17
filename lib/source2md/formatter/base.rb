module Source2MD
  module Formatter
    class Base
      def self.accept?(element)
        false
      end

      attr_reader :element

      def initialize(element)
        @element = element
      end

      def to_md
        raise NotImplementedError, "#{__method__} is not implemented"
      end
    end
  end
end
