require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
      #+BEGIN_SRC
      (foo)
      #+END_SRC
      EOS
      actual.should == <<~EOS.strip
```ruby
(foo)
```
      EOS
    end

    it "works" do
      actual = Element.new(<<~EOS).to_md
      #+BEGIN_SRC diff xxx:yyy
      (foo)
      #+END_SRC
      EOS
      actual.should == <<~EOS.strip
```diff xxx:yyy
(foo)
```
      EOS
    end
  end
end
