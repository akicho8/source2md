require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
#+code_block_name: xxx
(foo)
__END__
1
2
EOS
      actual.should == <<~EOS
```ruby:xxx
(foo)
```
      EOS
    end
  end
end
