require "./setup"

### Raw Text ###

# If no rule applies and the text begins with `#`, remove the `#`.

#+BEGIN_SRC
puts Source2MD::Sheet.new(<<~EOS).to_md
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
