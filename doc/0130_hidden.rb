#+hidden: true
require "./setup"

### Hide paragraph ###

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+hidden: true
  p "This paragraph is not displayed"
EOS
#+END_SRC

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+BEGIN_SRC hidden!
  p "This paragraph is not displayed"
  #+END_SRC
EOS
#+END_SRC
