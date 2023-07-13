module Source2MD
  module Type
    class Base
      def self.accept?(element)
        false
      end

      attr_reader :element

      def initialize(element)
        @element = element

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
          o << to_md
          o << "-" * 80
          o.compact * "\n"
        end
      end

      def to_md
      end
    end
  end
end
