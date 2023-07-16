require "./setup"

### Markdown Style Title ###

#+BEGIN_SRC
puts Source2MD::Sheet.new(<<~EOS).to_md
  # Title Level 1 #

  ## Title Level 2 ##

  ### Title Level 3 ###

  #### Title Level 4 ####
EOS
#+END_SRC

# > # Title Level 1 #
# >
# > ## Title Level 2 ##
# >
# > ### Title Level 3 ###
# >
# > #### Title Level 4 ####
