require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# alert: (foo)
EOS
      assert { actual == <<~EOS.strip }
:::message alert
(foo)
:::
      EOS
    end
  end
end
