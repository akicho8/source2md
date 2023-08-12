#+hidden: true
require "./setup"

#+title3: Raw Text

# If no rule applies and the text begins with `#`, remove the `#`.

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  # Lorem ipsum dolor sit amet, consectetur adipisicing elit,
  # sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
EOS
#+END_SRC

# > ```
# > Lorem ipsum dolor sit amet, consectetur adipisicing elit,
# > sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
# > ```
# >> Lorem ipsum dolor sit amet, consectetur adipisicing elit,
# >> sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
