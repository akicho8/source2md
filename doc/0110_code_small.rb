#+hidden: true
require "./setup"

#+title3: Code snippet

# Separated by blank lines.

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  hello = -> {
    "Hello, world!"
  }

  #+code_block_name: (name)
  hello.call
EOS
#+END_SRC

# > ```ruby
# > hello = -> {
# >   "Hello, world!"
# > }
# > ```

# > ```ruby:(name)
# > hello.call
# > ```

# >> ```ruby
# >> hello = -> {
# >>   "Hello, world!"
# >> }
# >> ```
# >> 
# >> 
# >> ```ruby:(name)
# >> hello.call
# >> ```
