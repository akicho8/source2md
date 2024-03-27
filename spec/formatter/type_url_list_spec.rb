require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# http://
# http://
EOS
      actual.should == <<~EOS
http://
http://
EOS
    end
  end
end
# >> .
# >> 
# >> Finished in 0.0059 seconds (files took 0.34597 seconds to load)
# >> 1 example, 0 failures
# >> 
