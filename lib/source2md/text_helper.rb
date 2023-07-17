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
      text.remove(/\R/)
    end
  end
end
