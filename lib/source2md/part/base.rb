module Source2MD
  module Part
    class Base
      def self.accept?(element)
        false
      end

      attr_reader :element

      def initialize(element)
        @element = element
      end

      # def to_md
      # 
      #   to_md
      # end
    end
  end
end
