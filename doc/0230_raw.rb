#+hidden: true
require "./setup"

### Raw text ###

# Same rule as when writing text, simply remove the leading `#`.

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  # <hr>
  #
  # <hr>
EOS
#+END_SRC

# > ```
# > <hr>
# >
# > <hr>
# > ```
