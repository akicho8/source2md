require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# title3: (foo)
EOS
      assert { actual == <<~EOS.strip }
### (foo) ###
      EOS
    end
  end
end
