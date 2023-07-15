module Source2MD
  module Type
    class ElementMdCodeBlock < Base
      def self.accept?(element)
        raise "must not happen"
        element.body.match?(/\A# ```/)
      end

      def to_md
        element.body.remove(/^# /, "")
      end
    end
  end
end
