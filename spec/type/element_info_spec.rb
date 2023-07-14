require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# info: (info)
EOS
      assert { actual == <<~EOS.strip }
:::message
(info)
:::
      EOS
    end
  end
end
