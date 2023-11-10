#+hidden: true
require "./setup"

#+title3: Eval

# Function for changing internal variables

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+eval: Source2MD.lang_default = "shell"
EOS
#+END_SRC
