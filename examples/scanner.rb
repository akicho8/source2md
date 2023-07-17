#+hidden: true
require "./setup"

Source2MD::Scanner.new(<<~EOS).to_a # => ["foo", "#+BEGIN_SRC\n\nfoo\n\n#+END_SRC", "foo"]
foo

#+BEGIN_SRC

foo

#+END_SRC

foo
EOS

Source2MD::Scanner.new(<<~EOS).to_a # => ["foo", "# ```yaml\n#+foo:\n#   a\n# ```", "bar"]
foo

# ```yaml
#+foo:
#   a
# ```

bar
EOS
