require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
#+set: 1 + 2
EOS
    end
  end
end
# >> .
# >> 
# >> Finished in 0.00398 seconds (files took 0.34568 seconds to load)
# >> 1 example, 0 failures
# >> 
