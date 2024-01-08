module Source2MD
  module Formatter
    class TypeText < Base

      # "# xxx"
      # "#"
      def self.regexp
        %r{#{RE.meta_re}( |$)}
      end

      def self.accept?(element)
        if element.body.present?
          element.body.lines.all? { |e| e.match?(regexp) }
        end
      end

      def to_md
        body
      end

      private

      def body
        s = element.body.remove(self.class.regexp)
        if element.head["squish"] == "true"
          s = TextHelper.squish(s)
        end

        case
        when element.head["oneline"] == "false"
        when element.head["oneline"] == "true" || Source2MD.oneline
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
