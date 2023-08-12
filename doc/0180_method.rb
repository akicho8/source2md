#+hidden: true
require "./setup"

#+title3: Explain method simply

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+name: String#size
  #+desc: Return the number of characters
  #+comment: Comments about size
  "abc".size  # => 3

  #+name: String#reverse
  #+desc: reverse the sequence of characters
  #+comment: Comments about reverse
  "abc".reverse  # => "cba"
EOS
#+END_SRC

# > ### String#size ###
# >
# > Return the number of characters
# >
# > ```ruby
# > "abc".size  # => 3
# > ```
# >
# > Comments about size
# >
# > ### String#reverse ###
# >
# > reverse the sequence of characters
# >
# > ```ruby
# > "abc".reverse  # => "cba"
# > ```
# >
# > Comments about reverse
