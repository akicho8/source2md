require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+BEGIN_SRC
(foo)
#+END_SRC
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Type::ElementSourceBlock
# >> 
# >> head:
# >> {}
# >> 
# >> in:
# >> #+BEGIN_SRC
# >> (foo)
# >> #+END_SRC
# >> 
# >> out:
# >> ```ruby
# >> (foo)
# >> ```
# >> --------------------------------------------------------------------------------
# >> ```ruby
# >> (foo)
# >> ```
