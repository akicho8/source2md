require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# ---
# foo: bar
# ---
EOS
      actual.should == <<~EOS
---
foo: bar
---
EOS
    end
  end
end
# >> .
# >> 
# >> Finished in 0.00648 seconds (files took 0.35849 seconds to load)
# >> 1 example, 0 failures
# >> 
