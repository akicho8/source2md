require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
#+code_include: #{__dir__}/sample.yml
EOS
      actual.should == <<~EOS
```yml:sample.yml
(yaml)
```
      EOS
    end

    it "works" do
      actual = Element.new(<<~EOS).to_md
#+code_include: #{__dir__}/sample.yml
#+lang: (lang)
#+name: (name)
EOS
      actual.should == <<~EOS
```(lang):(name)
(yaml)
```
      EOS
    end

    it "works" do
      actual = Element.new(<<~EOS).to_md
#+code_include: #{__dir__}/sample.yml yaml:filename
EOS
      actual.should == <<~EOS
```yaml:filename
(yaml)
```
      EOS
    end
  end
end
