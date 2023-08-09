require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
#+raw_include: #{__dir__}/sample.yml
EOS
      actual.should == <<~EOS
(yaml)
      EOS
    end
  end
end
