module Source2MD
  module TextHelper
    extend self

    def blank_lines_squish(text)
      text.gsub(/\n{3,}/, "\n\n")
    end

    def add_newline_at_end_of_text(text)
      text.strip + "\n"
    end

    def oneline(text)
      text.remove(/\R+/)
    end

    def squish(text)
      text.gsub(/[[:space:]]+/, " ").strip
    end

    def hankaku_kana(text)
      NKF.nkf("-wxZ4", text)
    end
  end
end
