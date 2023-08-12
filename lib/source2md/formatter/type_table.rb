module Source2MD
  module Formatter
    class TypeTable < Base
      def self.accept?(element)
        !element.body.empty? && element.body.lines.all? { |e| e.match?(%r{#{RE.meta_re} \|.*\|$}) }
      end

      def to_md
        element.body
          .remove(%r{#{RE.meta_re} })
          .remove(/\A\|-.*?-\|\R/)  # top
          .remove(/^\|-.*?-\|\R\z/) # bottom
          .gsub(/-\+-/, "-|-")
      end
    end
  end
end
