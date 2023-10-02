require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
(foo)
__END__
1
2
EOS
      actual.should == <<~EOS
```ruby
(foo)
```
      EOS
    end
  end
end
