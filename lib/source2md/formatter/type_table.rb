module Source2MD
  module Formatter
    class TypeTable < Base
      def self.accept?(element)
        !element.body.empty? && element.body.lines.all? { |e| e.match?(%r{^\s*(#|//) \|.*\|$}) }
      end

      def to_md
        element.body
          .remove(%r{^\s*(#|//) })
          .remove(/\A\|-.*?-\|\R/)  # top
          .remove(/^\|-.*?-\|\R\z/) # bottom
          .gsub(/-\+-/, "-|-")
      end
    end
  end
end
