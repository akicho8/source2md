#+hidden: true
require "./setup"

#+title3: Code snippet

# Separated by blank lines.

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
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
# >> ```ruby
# >> hello = -> {
# >>   "Hello, world!"
# >> }
# >> ```
# >> 
# >> 
# >> ```ruby
# >> hello.call
# >> ```
