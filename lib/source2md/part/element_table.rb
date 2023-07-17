module Source2MD
  module Part
    class ElementTable < Base
      def self.accept?(element)
        !element.body.empty? && element.body.lines.all? { |e| e.match?(/^# \|.*\|$/) }
      end

      def to_md
        element.body
          .remove(/^# /)
          .remove(/\A\|-.*?-\|\R?/)
          .remove(/^\|-.*?-\|\z/)
          .gsub(/-\+-/, "-|-").strip
      end
    end
  end
end
