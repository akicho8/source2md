require "./setup"

### Embedding Of Small Code ###

#+BEGIN_SRC
puts Source2MD::Sheet.new(<<~EOS).to_md
  hello = -> {
    "Hello, world!"
  }

  hello.call
EOS
#+END_SRC

# > ```ruby
# > hello = -> {
# >   "Hello, world!"
# > }
# > ```

# > ```ruby
# > hello.call
# > ```
