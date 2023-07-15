require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+BEGIN_SRC diff xxx:yyy
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
# >> #+BEGIN_SRC diff xxx:yyy
# >> (foo)
# >> #+END_SRC
# >> 
# >> out:
# >> ```diff xxx:yyy
# >> diff xxx:yyy
# >> (foo)
# >> ```
# >> --------------------------------------------------------------------------------
# >> ```diff xxx:yyy
# >> diff xxx:yyy
# >> (foo)
# >> ```
