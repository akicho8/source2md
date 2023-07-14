require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
---
foo: 1
---
EOS
      assert { actual == <<~EOS.strip }
---
foo: 1
---
      EOS
    end
  end
end
# >> .
# >> 
# >> Finished in 0.00676 seconds (files took 0.2391 seconds to load)
# >> 1 example, 0 failures
# >> 
