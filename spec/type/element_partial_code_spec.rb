require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
(foo)
EOS
      assert { actual == <<~EOS.strip }
```ruby
(foo)
```
      EOS
    end
  end
end
