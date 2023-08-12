module Source2MD
  class Scanner
    def initialize(content)
      @content = content
    end

    def to_a
      v = @content
      v = v.rstrip + "\n\n"
      if Source2MD.xmp_out_exclude
        v = v.remove(RE.stdout_re)
      end
      v = v.scan(paragraph_re)
      v = v.collect { |e| e.rstrip + "\n" }
      v = v.find_all(&:present?)
    end

    private

    def paragraph_re
      Regexp.union(src_block_re, normal_block_re)
    end

    def src_block_re
      %r{#{RE.meta_re}\+BEGIN_SRC.*?#{RE.meta_re}\+END_SRC}m
    end

    def normal_block_re
      /.*?#{separator}/m
    end

    def separator
      "\\R{2,}"
    end
  end
end
