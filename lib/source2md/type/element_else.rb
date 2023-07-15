module Source2MD
  module Type
    class ElementElse < Base
      def self.accept?(element)
        true
      end

      def render
        p "-" * 80
        p element.head
        p element.body
        p element
        p "-" * 80
        abort
      end
    end
  end
end
