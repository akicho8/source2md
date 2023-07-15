module Source2MD
  module Type
    class ElementTable < Base
      def self.accept?(element)
        !element.body.empty? && element.body.lines.all? { |e| e.match?(/^# \|.*\|$/) }
      end

      def render
        element.body
          .remove(/^# /)
          .remove(/\A\|-.*?-\|\R?/)
          .remove(/^\|-.*?-\|\z/)
          .gsub(/-\+-/, "-|-").strip
      end
    end
  end
end
