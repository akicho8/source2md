require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# - foo
#   http://example.com/
EOS
      actual.should == <<~EOS.strip
- foo
  http://example.com/
EOS
    end

    it "works" do
      actual = Element.new(<<~EOS).to_md
#+oneline: true
# a
# b
#
# c
# d
EOS
      actual.should == <<~EOS.strip
abcd
EOS
    end
  end
end
