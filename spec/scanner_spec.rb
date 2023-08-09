require "spec_helper"

module Source2MD
  describe Scanner do
    it "works" do
      ary = Scanner.new(<<~EOS).to_a
      foo

      #+BEGIN_SRC

      foo

      #+END_SRC

      foo

      #+BEGIN_SRC
      foo
      #+END_SRC

      foo
      EOS

      assert { ary == ["foo\n", "#+BEGIN_SRC\n\nfoo\n\n#+END_SRC\n", "foo\n", "#+BEGIN_SRC\nfoo\n#+END_SRC\n", "foo\n"] }
    end
  end
end
# >> F
# >> 
# >> Failures:
# >> 
# >>   1) Source2MD::Scanner works
# >>      Failure/Error: Unable to find - to read failed line
# >>      Test::Unit::AssertionFailedError:
# >>      # -:25:in `block (2 levels) in <module:Source2MD>'
# >> 
# >> Finished in 0.01112 seconds (files took 0.26074 seconds to load)
# >> 1 example, 1 failure
# >> 
# >> Failed examples:
# >> 
# >> rspec -:5 # Source2MD::Scanner works
# >> 
