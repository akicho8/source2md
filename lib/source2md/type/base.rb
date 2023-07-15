module Source2MD
  module Type
    class Base
      def self.accept?(element)
        false
      end

      attr_reader :element

      def initialize(element)
        @element = element

      end

      def to_md
        Source2MD.logger.debug do
          o = []
          o << "-" * 80
          o << self.class.name
          o << ""
          o << "head:"
          o << element.head
          o << ""
          o << "in:"
          o << element.body
          o << ""
          o << "out:"
          o << render
          o << "-" * 80
          o.compact * "\n"
        end

        render
      end
    end
  end
end
