#
# #- foo
# 1 + 2
#
# ↓
#
# foo
#
# ```ruby
# 1 + 2
# ```
#
module Source2MD
  module Type
    class ElementHeaderComment < Base
      def self.accept?(element)
        element.body.match?(/^#-/)
      end

      def to_md
        [
          message,
          "```ruby",
          body,
          "```",
        ] * "\n"
      end

      private

      def message
        element.body.scan(/^#-\s*(.*)/).join
      end

      def body
        element.body.gsub(/^#-.*\R/, "")
      end
    end
  end
end
