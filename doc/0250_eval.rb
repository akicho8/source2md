#+hidden: true
require "./setup"

#+title3: Eval

# Function for changing internal variables

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+eval: Source2MD.default_lang = "shell"
EOS
#+END_SRC
