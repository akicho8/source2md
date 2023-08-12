module Source2MD
  class CodeBlock
    PADDING_KEEP = 2
    ARROW_MARK         = %r{(?:#{RE.comment_re}) =>}

    def initialize(text, options = {})
      @text = text
      @options = {
        :lang => nil,
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
        if s = lang
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
      comment_re_justfiy(line)
    end

    # def single_sharp_replace_to_blank_line(line)
    #   line.gsub(/\A#\z/, "")
    # end

    def comment_re_justfiy(line)
      line.gsub(/(.*?)\s*(#{ARROW_MARK})(.*)/) {
        a, b, c = Regexp.last_match.captures
        space = " " * (PADDING_KEEP + (max - a.size))
        [a, space, b, c].join
      }
    end

    def raw_lines
      @raw_lines ||= @text.lines
    end

    def lines
      @lines ||= TextHelper.space_prefix_remove(@text).lines
    end

    def max
      @max ||= yield_self do
        av = lines
        av = av.find_all { |e| e.match?(ARROW_MARK) }
        av = av.collect { |e| e.gsub(/\s*#{ARROW_MARK}.*\R/, "").size }
        av.max
      end
    end

    def lang
      @options[:lang] || ENV["DEFAULT_LANG"] || Source2MD.default_lang
    end
  end
end
