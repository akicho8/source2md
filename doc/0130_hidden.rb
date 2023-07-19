#+hidden: true
require "./setup"

### Hide paragraph ###

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+hidden: true
  p "This paragraph is not displayed"

  p "This paragraph is displayed"
EOS
#+END_SRC

# > ```ruby
# > p "This paragraph is displayed"
# > ```
