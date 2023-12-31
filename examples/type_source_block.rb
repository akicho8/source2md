#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+BEGIN_SRC diff xxx:yyy data_block_exclude!
(foo)
__END__
xxx
#+END_SRC
EOS
# >> head: {}
# >> body: "#+BEGIN_SRC diff xxx:yyy data_block_exclude!\n(foo)\n__END__\nxxx\n#+END_SRC\n"
# >> Source2MD::Formatter::TypeHidden => false
# >> Source2MD::Formatter::TypeEval => 
# >> Source2MD::Formatter::TypeCodeInclude => 
# >> Source2MD::Formatter::TypeRawInclude => 
# >> Source2MD::Formatter::TypeParseInclude => 
# >> Source2MD::Formatter::TypeTitle => false
# >> Source2MD::Formatter::TypeWarn => 
# >> Source2MD::Formatter::TypeAlert => 
# >> Source2MD::Formatter::TypeMethod => 
# >> Source2MD::Formatter::TypeTable => false
# >> Source2MD::Formatter::TypeSourceBlock => true
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeSourceBlock
# >> > {}
# >> > ------------------------------------------------------------ in
# >> > #+BEGIN_SRC diff xxx:yyy data_block_exclude!
# >> > (foo)
# >> > __END__
# >> > xxx
# >> > #+END_SRC
# >> > 
# >> > 
# >> > ------------------------------------------------------------ out
# >> > ```diff xxx:yyy
# >> > (foo)
# >> > ```
# >> > 
# >> > ------------------------------------------------------------
# >> ```diff xxx:yyy
# >> (foo)
# >> ```
