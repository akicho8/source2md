module Source2MD
  module Type
    class ElementTable < Base
      def self.accept?(element)
        element.body.lines.all? { |e| e.match?(/^# \|.*\|$/) }
      end

      def to_md
        element.body
          .gsub(/^# /, "")
          .sub(/\A\|.*?\|\R?/, "")
          .sub(/^\|.*?\|\z/, "")
          .gsub(/-\+-/, "-|-").strip
      end
    end
  end
end
