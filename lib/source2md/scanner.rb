module Source2MD
  class Scanner
    SEPARATOR           = "\\R{2,}"

    MD_CODE_BLOCK_REGEXP = /^# ```.*?^# ```/m

    BEGIN_KEY           = "BEGIN_SRC"
    END_KEY             = "END_SRC"
    SOURCE_BLOCK_REGEXP = /^#\+#{BEGIN_KEY}.*?^#\+#{END_KEY}/m

    NORMAL_BLOCK_REGEXP = /.*?#{SEPARATOR}/m

    PARAGRAPH_REGEXP = Regexp.union [
      MD_CODE_BLOCK_REGEXP,
      SOURCE_BLOCK_REGEXP,
      NORMAL_BLOCK_REGEXP,
    ]

    def initialize(content)
      @content = content
    end

    def to_a
      v = @content
      if Source2MD.xmp_out_exclude
        v = v.remove(/^# >>.*$/)
      end
      v = v + "\n\n"
      v = v.scan(PARAGRAPH_REGEXP)
      v = v.collect(&:strip)
      v = v.find_all(&:present?)
    end
  end
end
