require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# alert: (alert)
EOS
      assert { actual == <<~EOS.strip }
:::message alert
(alert)
:::
      EOS
    end
  end
end
