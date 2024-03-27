require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# - a
# - b
EOS
      actual.should == <<~EOS
- a
- b
EOS
    end
  end
end
# >> .
# >> 
# >> Finished in 0.00671 seconds (files took 0.42211 seconds to load)
# >> 1 example, 0 failures
# >> 
