require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
#+include: #{__dir__}/sample.yml
EOS
      actual.should == <<~EOS.strip
```yaml:sample.yml
foo
```
      EOS
    end
  end
end
