module Source2MD
  class Scanner
    BEGIN_KEY           = "BEGIN_SRC"
    END_KEY             = "END_SRC"
    SEPARATOR           = "\\R{2,}"
    SOURCE_BLOCK_REGEXP = /^#\+#{BEGIN_KEY}.*?^#\+#{END_KEY}.*?#{SEPARATOR}/m
    NORMAL_BLOCK_REGEXP = /.*?#{SEPARATOR}/m
    PARAGRAPH_REGEXP    = Regexp.union(SOURCE_BLOCK_REGEXP, NORMAL_BLOCK_REGEXP)

    def initialize(content)
      @content = content
    end

    def to_a
      (@content + "\n\n").scan(PARAGRAPH_REGEXP).collect(&:strip)
    end
  end
end
