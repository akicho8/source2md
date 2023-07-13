require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
code
EOS
      assert { actual == <<~EOS.strip }
```ruby
code
```
      EOS
    end
  end
end
