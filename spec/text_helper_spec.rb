require "spec_helper"

module Source2MD
  describe TextHelper do
    it "blank_lines_squish" do
      assert { TextHelper.blank_lines_squish("A\nB\n\nC\n\n\nD") == "A\nB\n\nC\n\nD" }
    end

    it "add_newline_at_end_of_text" do
      assert { TextHelper.add_newline_at_end_of_text("A") == "A\n"     }
      assert { TextHelper.add_newline_at_end_of_text("A\n") == "A\n"   }
      assert { TextHelper.add_newline_at_end_of_text("A\n\n") == "A\n" }
    end

    it "hankaku_kana" do
      assert { TextHelper.hankaku_kana("ｱア") == "ｱｱ" }
    end
  end
end
