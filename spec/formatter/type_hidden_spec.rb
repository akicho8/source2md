require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
      #+hidden: true
      (hidden)
EOS
      assert { actual == "" }
    end
  end
end
