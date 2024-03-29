module Source2MD
  module TextHelper
    extend self

    def blank_lines_squish(text)
      text.gsub(/\n{3,}/, "\n\n")
    end

    def oneline(text)
      text = text.gsub(/？\R/, "？ ")
      text = text.remove(/\R+/)
    end

    def squish(text)
      text.gsub(/[[:space:]]+/, " ").strip
    end

    def hankaku_kana(text)
      NKF.nkf("-wxZ4", text)
    end

    def indent(text, size = 2)
      text.gsub(/^/, " " * size)
    end

    def eol_enter(text)
      text.rstrip + "\n"
    end

    def space_prefix_remove(text)
      min = text.lines.reject(&:blank?).collect { |e| e.slice(/^\s*/).size }.min
      text.remove(/^ {#{min}}/)
    end

    def data_block_exclude(text)
      text.sub(/^__END__\R.*/m, "")
    end
  end
end
