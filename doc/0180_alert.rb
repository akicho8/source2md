require "./setup"

### Warning, Alert Message ###

Exclusive to Zenn

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+warn: this is warning message

  #+alert: this is alert message
EOS
#+END_SRC

# > ```
# > :::message
# > this is warning message
# > :::
# > ```
# >
# > ```
# > :::message alert
# > this is alert message
# > :::
# > ```
