require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
(foo)
EOS
      actual.should == <<~EOS
```ruby
(foo)
```
      EOS
    end
  end
end
