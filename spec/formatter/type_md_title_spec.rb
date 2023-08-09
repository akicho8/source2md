require "spec_helper"

module Source2MD
  describe do
    xit "works" do
      actual = Element.new(<<~EOS).to_md
## foo ##
EOS
      actual.should == <<~EOS
## foo ##
      EOS
    end
  end
end
