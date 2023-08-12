module Source2MD
  class Scanner
    SEPARATOR = "\\R{2,}"

    SRC_BEGIN_KEY = "BEGIN_SRC"
    SRC_END_KEY   = "END_SRC"
    SRC_BLOCK_RE  = %r{^\s*(?:#|//)\+#{SRC_BEGIN_KEY}.*?^\s*(?:#|//)\+#{SRC_END_KEY}}m

    NORMAL_BLOCK_RE = /.*?#{SEPARATOR}/m

    PARAGRAPH_RE = Regexp.union [
      SRC_BLOCK_RE,
      NORMAL_BLOCK_RE,
    ]

    def initialize(content)
      @content = content
    end

    def to_a
      v = @content
      v = v.rstrip + "\n\n"
      if Source2MD.xmp_out_exclude
        v = v.remove(%r{^(?:#|//) >>.*$})
      end
      v = v.scan(PARAGRAPH_RE)
      v = v.collect { |e| e.rstrip + "\n" }
      v = v.find_all(&:present?)
    end
  end
end
