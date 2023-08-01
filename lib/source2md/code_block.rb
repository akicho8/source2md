module Source2MD
  class CodeBlock
    PADDING_KEEP = 2
    MARK         = /(?:#|\/\/) =>/

    attr_accessor :code

    def initialize(code, options = {})
      @code = code
      @options = {
        :lang => "ruby",
        # :single_sharp_replace_to_blank_line => false,
      }.merge(options)
    end

    def to_md
      [
        "```#{code_block_head}",
        normalized_code,
        "```",
      ] * "\n"
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
      lines.collect(&method(:normalize)) * "\n"
    end

    def normalize(line)
      # if @options[:single_sharp_replace_to_blank_line]
      #   line = single_sharp_replace_to_blank_line(line)
      # end
      if @options[:lang] == "ruby"
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

    def lines
      @lines ||= code.strip.lines.collect(&:rstrip)
    end

    def max
      @max ||= yield_self do
        av = lines
        av = av.find_all { |e| e.match?(MARK) }
        av = av.collect { |e| e.gsub(/\s*#{MARK}.*/, "").size }
        av.max
      end
    end
  end
end
