require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
#+title2: (foo)
EOS
      actual.should == <<~EOS.strip
## (foo) ##
      EOS
    end
  end
end
