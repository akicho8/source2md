#+hidden: true
require "./setup"

#+title3: Source block with many lines

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+BEGIN_SRC
  hello = -> {
    "Hello, world!"
  }

  hello.call
  #+END_SRC
EOS
#+END_SRC

# > ```ruby
# > hello = -> {
# >   "Hello, world!"
# > }
# >
# > hello.call
# > ```
# >> ```ruby
# >> hello = -> {
# >>   "Hello, world!"
# >> }
# >>
# >> hello.call
# >> ```
