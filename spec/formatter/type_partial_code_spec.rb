require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
#+partial_code_name: xxx
#+partial_code_lang: yyy
#+data_block_exclude: true
(foo)
__END__
1
2
EOS
      actual.should == <<~EOS
```yyy:xxx
(foo)
```
      EOS
    end
  end
end
