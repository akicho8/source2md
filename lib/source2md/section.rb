module Source2MD
  class Section
    def initialize(content)
      @content = content
    end

    def to_md
      elements.collect(&:to_md).compact * "\n\n"
    end

    private

    def elements
      @elements ||= Scanner.new(@content).to_a.collect do |e|
        Element.new(e)
      end
    end
  end
end
