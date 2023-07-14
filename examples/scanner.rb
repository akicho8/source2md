require "./setup"

Source2MD::Scanner.new(<<~EOS).to_a # => ["foo", "#+BEGIN_SRC\n\nfoo\n\n#+END_SRC", "foo"]
foo

#+BEGIN_SRC

foo

#+END_SRC

foo
EOS
