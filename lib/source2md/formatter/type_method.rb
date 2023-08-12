module Source2MD
  module Formatter
    class TypeMethod < Base
      def self.accept?(element)
        element.head["name"]
      end

      def to_md
        o = []
        o << "### #{element.head["name"]} ###\n"
        if v = element.head["desc"]
          o << "\n"
          o << v + "\n"
          o << "\n"
        end
        o << CodeBlock.new(body).to_md
        if v = element.head["comment"]
          o << "\n"
          o << v + "\n"
          o << "\n"
        end
        o.join
      end

      private

      def body
        element.body.gsub(%r{(#{RE.comment_re})$}, "")
      end
    end
  end
end
