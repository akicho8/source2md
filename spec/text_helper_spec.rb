require "spec_helper"

module Source2MD
  describe TextHelper do
    it "blank_lines_squish" do
      assert { TextHelper.blank_lines_squish("A\nB\n\nC\n\n\nD") == "A\nB\n\nC\n\nD" }
    end

    it "eol_enter" do
      assert { TextHelper.eol_enter("A") == "A\n"     }
      assert { TextHelper.eol_enter("A\n\n") == "A\n" }
    end

    it "hankaku_kana" do
      assert { TextHelper.hankaku_kana("ｱア") == "ｱｱ" }
    end

    it "space_prefix_remove" do
      assert { TextHelper.space_prefix_remove(" a\n  b\n") == "a\n b\n" }
      assert { TextHelper.space_prefix_remove(" a\n\n  b\n") == "a\n\n b\n" }
    end

    it "data_block_exclude" do
      assert { TextHelper.data_block_exclude("(before)\n__END__\n(after)") == "(before)\n" }
    end
  end
end
