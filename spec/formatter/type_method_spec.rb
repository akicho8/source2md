require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(TextHelper.indent(<<~EOS)).to_md
#+name: (name)
#+desc: (desc)
#+comment: (comment)
(code1)
#
(code2)
EOS
      actual.should == <<~EOS
### (name) ###

(desc)

```ruby
(code1)

(code2)
```

(comment)

      EOS
    end
  end
end
