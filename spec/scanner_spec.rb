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

      assert { ary == ["foo", "#+BEGIN_SRC\n\nfoo\n\n#+END_SRC", "foo", "#+BEGIN_SRC\nfoo\n#+END_SRC", "foo"] }
    end
  end
end
