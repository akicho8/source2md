require "./setup"

### Title ###

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+title1: Title Level 1

  #+title2: Title Level 2

  #+title3: Title Level 3

  #+title4: Title Level 4
EOS
#+END_SRC

# > # Title Level 1 # #
# >
# > ## Title Level 2 # ##
# >
# > ### Title Level 3 # ###
# >
# > #### Title Level 4 # ####
