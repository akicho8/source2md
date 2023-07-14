module Source2MD
  class FileBlock
    BEGIN_MARK   = "BEGIN_SRC"
    END_MARK     = "END_SRC"
    SEPARATOR    = "\R{2,}"
    SRC_REGEXP   = /^#\+#{BEGIN_MARK}.*?^#\+#{END_MARK}.*?#{SEPARATOR}/m
    BLOCK_REGEXP = /.*?#{SEPARATOR}/m
    SCAN_REGEXP  = Regexp.union(SRC_REGEXP, BLOCK_REGEXP)

    def initialize(file)
      @file = file
      puts "read: #{file}"
    end

    def to_md
      elements.collect(&:to_md).compact * "\n\n"
    end

    private

    def elements
      @elements ||= @file.read.scan(SCAN_REGEXP).collect(&:strip).collect do |e|
        Element.new(e)
      end
    end
  end
end
