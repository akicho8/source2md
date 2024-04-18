require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
      #+BEGIN_SRC
      (foo)
      #+END_SRC
      EOS
      actual.should == <<~EOS
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
      actual.should == <<~EOS
```diff xxx:yyy
(foo)
```
      EOS
    end

    it "works" do
      actual = Element.new(<<~EOS).to_md
      #+BEGIN_SRC :yyy
      (foo)
      #+END_SRC
      EOS
      actual.should == <<~EOS
```ruby:yyy
(foo)
```
      EOS
    end

    it "works" do
      actual = Element.new(<<~EOS).to_md
      #+BEGIN_SRC diff xxx:yyy hidden!
      (foo)
      #+END_SRC
      EOS
      actual.should == ""
    end

    it "works" do
      actual = Element.new(<<~EOS).to_md
      #+BEGIN_SRC xxx:yyy data_block_exclude!
      (foo)
      __END__
      xxx
      #+END_SRC
      EOS
      actual.should == <<~EOS
```xxx:yyy
(foo)
```
      EOS
    end
  end
end
# >> ...F
# >>
# >> Failures:
# >>
# >>   1) works
# >>      Failure/Error: Unable to find - to read failed line
# >>
# >>        expected: ""
# >>             got: "```xxx:yyy data_block_exclude\n```\n" (using ==)
# >>        Diff:
# >>        @@ -1,2 +1,4 @@
# >>        +```xxx:yyy data_block_exclude
# >>        +```
# >>      # -:47:in `block (2 levels) in <module:Source2MD>'
# >>
# >> Finished in 0.01747 seconds (files took 0.33507 seconds to load)
# >> 4 examples, 1 failure
# >>
# >> Failed examples:
# >>
# >> rspec -:40 # works
# >>
