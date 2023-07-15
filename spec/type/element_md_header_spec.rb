require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
---
foo: 1
---
EOS
      actual.should == <<~EOS.strip
---
foo: 1
---
      EOS
    end
  end
end
