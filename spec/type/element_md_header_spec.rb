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
# >> F
# >>
# >> Failures:
# >>
# >>   1) works
# >>      Failure/Error: Unable to find - to read failed line
# >>      Test::Unit::AssertionFailedError:
# >>      # -:14:in `block (2 levels) in <module:Source2MD>'
# >>
# >> Finished in 0.0113 seconds (files took 0.26182 seconds to load)
# >> 1 example, 1 failure
# >>
# >> Failed examples:
# >>
# >> rspec -:5 # works
# >>
