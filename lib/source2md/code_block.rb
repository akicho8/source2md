module Source2MD
  class CodeBlock
    PADDING_KEEP = 2
    MARK         = %r{(?:#|//) =>}

    attr_accessor :code

    def initialize(code, options = {})
      @code = code
      @options = {
        :lang => ENV["DEFAULT_LANG"] || "ruby",
        # :single_sharp_replace_to_blank_line => false,
      }.merge(options)
    end

    def to_md
      [
        "```#{code_block_head}\n",
        normalized_code,
        "```\n",
      ].join
    end

    private

    def code_block_head
      o = []
      if s = @options[:desc]
        o << s
      else
        if s = @options[:lang]
          o << s
        end
        if s = @options[:name]
          o << ":"
          o << s
        end
      end
      o.join
    end

    def normalized_code
      lines.collect(&method(:normalize)).join
    end

    def normalize(line)
      # if @options[:single_sharp_replace_to_blank_line]
      #   line = single_sharp_replace_to_blank_line(line)
      # end
      if @options[:lang] == "ruby" || @options[:lang] == "rust"
        line = comment_mark_justfiy(line)
      end
      line
    end

    # def single_sharp_replace_to_blank_line(line)
    #   line.gsub(/\A#\z/, "")
    # end

    def comment_mark_justfiy(line)
      line.gsub(/(.*?)\s*(#{MARK})(.*)/) {
        a, b, c = Regexp.last_match.captures
        space = " " * (PADDING_KEEP + (max - a.size))
        [a, space, b, c].join
      }
    end

    def raw_lines
      @raw_lines ||= code.lines
    end

    def lines
      @lines ||= yield_self do
        min = raw_lines.collect { |e| e.slice(/^\s*/).size }.min
        re = /^\s{#{min}}/
        raw_lines.collect { |e| e.remove(re) }
      end
    end

    def max
      @max ||= yield_self do
        av = lines
        av = av.find_all { |e| e.match?(MARK) }
        av = av.collect { |e| e.gsub(/\s*#{MARK}.*\R/, "").size }
        av.max
      end
    end
  end
end
