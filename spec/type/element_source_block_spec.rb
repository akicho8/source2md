require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
      #+BEGIN_SRC
      (foo)
      #+END_SRC
      EOS
      assert { actual == <<~EOS.strip }
```ruby
(foo)
```
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
# >>      # -:11:in `block (2 levels) in <module:Source2MD>'
# >> 
# >> Finished in 0.0136 seconds (files took 0.24109 seconds to load)
# >> 1 example, 1 failure
# >> 
# >> Failed examples:
# >> 
# >> rspec -:5 # works
# >> 
