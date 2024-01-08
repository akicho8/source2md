require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# ```
# foo
# ```
EOS
      actual.should == <<~EOS
```
foo
```
EOS
    end
  end
end
# >> .
# >> 
# >> Finished in 0.00614 seconds (files took 0.36666 seconds to load)
# >> 1 example, 0 failures
# >> 
