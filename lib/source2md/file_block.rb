module Source2MD
  class FileBlock
    def initialize(file)
      @file = file
      puts "read: #{file}"
    end

    def to_md
      elements.collect(&:to_md).compact * "\n\n"
    end

    private

    def elements
      @elements ||= @file.read.strip.split(/\n{2,}/).collect do |e|
        Element.new(e)
      end
    end
  end
end
