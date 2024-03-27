require "spec_helper"

module Source2MD
  describe do
    it "works" do
      # Source2MD.logger.level = :debug
      actual = Element.new(<<~EOS).to_md
# - foo
#   http://example.com/
EOS
      actual.should == <<~EOS
- foo
  http://example.com/
EOS
    end

    it "oneline" do
      actual = Element.new(<<~EOS).to_md
#+oneline: true
# a
# b
#
# c
# d
EOS
      actual.should == <<~EOS
abcd
EOS
    end

    it "squish" do
      actual = Element.new(<<~EOS).to_md
#+squish: true
# a
# b
#
# c
# d
EOS
      actual.should == <<~EOS
a b c d
EOS
    end

    it "hankaku_kana" do
      actual = Element.new(<<~EOS).to_md
#+hankaku_kana: true
# ｱア
EOS
      actual.should == "ｱｱ\n"
    end

    it "http" do
      actual = Element.new(<<~EOS).to_md
# http://
# http://
EOS
      actual.should == <<~EOS
http://
http://
EOS
    end
  end
end
# >> .....
# >> 
# >> Finished in 0.00713 seconds (files took 0.33822 seconds to load)
# >> 5 examples, 0 failures
# >> 
