#+hidden: true
require "./setup"

Source2MD.data_block_exclude = true

puts Source2MD::Element.new(<<~EOS).to_md
  a
    b
  c
  __END__
  foo
EOS
# >> head: {}
# >> body: "a\n  b\nc\n__END__\nfoo\n"
# >> Source2MD::Formatter::TypeHidden => false
# >> Source2MD::Formatter::TypeCodeInclude => 
# >> Source2MD::Formatter::TypeRawInclude => 
# >> Source2MD::Formatter::TypeParseInclude => 
# >> Source2MD::Formatter::TypeTitle => false
# >> Source2MD::Formatter::TypeWarn => 
# >> Source2MD::Formatter::TypeAlert => 
# >> Source2MD::Formatter::TypeMethod => 
# >> Source2MD::Formatter::TypeTable => false
# >> Source2MD::Formatter::TypeSourceBlock => false
# >> Source2MD::Formatter::TypeText => false
# >> Source2MD::Formatter::TypePartialCode => true
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypePartialCode
# >> > {}
# >> > ------------------------------------------------------------ in
# >> > a
# >> >   b
# >> > c
# >> > __END__
# >> > foo
# >> > 
# >> > 
# >> > ------------------------------------------------------------ out
# >> > ```ruby
# >> > a
# >> >   b
# >> > c
# >> > ```
# >> > 
# >> > ------------------------------------------------------------
# >> ```ruby
# >> a
# >>   b
# >> c
# >> ```
