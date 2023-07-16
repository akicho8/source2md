require "./setup"

### Description of Method ###

#+BEGIN_SRC
puts Source2MD::Sheet.new(<<~EOS).to_md
  #+name: String#succ
  #+desc: Returns the next string of self
  #+comment: Comments about succ
  "a".succ                        # => "b"

  #+name: String#reverse
  #+desc: reverse the sequence of characters
  #+comment: Comments about reverse
  "abc".reverse                   # => "cba"
EOS
#+END_SRC

# > ### String#succ ###
# >
# > Returns the next string of self
# >
# > ```ruby
# > "a".succ  # => "b"
# > ```
# >
# > Comments about succ
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
