require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
#+warn: (foo)
EOS
      assert { actual == <<~EOS.strip }
:::message
(foo)
:::
      EOS
    end
  end
end
