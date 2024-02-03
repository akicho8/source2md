require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# ![](https://example.com/image.png)
# **(alt)**
EOS
      actual.should == <<~EOS
![](https://example.com/image.png)
**(alt)**
EOS
    end
  end
end
# >> .
# >> 
# >> Finished in 0.00592 seconds (files took 0.33715 seconds to load)
# >> 1 example, 0 failures
# >> 
