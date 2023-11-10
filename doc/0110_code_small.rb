#+hidden: true
require "./setup"

#+title3: Code snippet

# Separated by blank lines.

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  hello = -> {
    "Hello, world!"
  }

  #+partial_code_name: (name)
  #+partial_code_lang: (ruby)
  hello.call
EOS
#+END_SRC

# > ```ruby
# > hello = -> {
# >   "Hello, world!"
# > }
# > ```

# > ```(ruby):(name)
# > hello.call
# > ```

# >> ```ruby
# >> hello = -> {
# >>   "Hello, world!"
# >> }
# >> ```
# >> 
# >> 
# >> ```(ruby):(name)
# >> hello.call
# >> ```
