#+hidden: true
require "./setup"

#+title3: Oneline Text

# Using this option allows you to split a line regardless of the markdown library.

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+squish: true
  # Lorem ipsum dolor sit amet, consectetur adipisicing elit,
  # sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
EOS
#+END_SRC

# > ```
# > Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
# > ```
# >> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
