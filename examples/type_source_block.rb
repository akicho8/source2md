#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+BEGIN_SRC diff xxx:yyy hidden!
(foo)
#+END_SRC
EOS
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeSourceBlock
# >> > {}
# >> > ------------------------------------------------------------ in
# >> > #+BEGIN_SRC diff xxx:yyy hidden!
# >> > (foo)
# >> > #+END_SRC
# >> > 
# >> > ------------------------------------------------------------ out
# >> > 
# >> > ------------------------------------------------------------
# >> 
