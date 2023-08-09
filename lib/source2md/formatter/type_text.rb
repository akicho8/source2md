module Source2MD
  module Formatter
    class TypeText < Base
      # "# xxx"
      # "#"
      REGEXP = %r{^\s*(?:#|//)( |$)}

      def self.accept?(element)
        element.body.lines.all? { |e| e.match?(REGEXP) }
      end

      def to_md
        body
      end

      private

      def body
        s = element.body.remove(REGEXP)
        if element.head["squish"] == "true"
          s = TextHelper.squish(s)
        end
        if element.head["oneline"] == "true"
          s = TextHelper.oneline(s)
        end
        if element.head["hankaku_kana"] == "true"
          s = TextHelper.hankaku_kana(s)
        end
        TextHelper.eol_enter(s)
      end
    end
  end
end
