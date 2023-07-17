#+hidden: true
require "./setup"

### Markdown style title ###

# The condition is that there are the same number of sharps on the back.

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  # Title Level 1 #

  ## Title Level 2 ##

  ### Title Level 3 ###
EOS
#+END_SRC

# > # Title Level 1 #
# >
# > ## Title Level 2 ##
# >
# > ### Title Level 3 ###
