#+hidden: true
require "./setup"

Source2MD.data_block_exclude = true

puts Source2MD::Element.new(<<~EOS).to_md
  #+partial_code_name: foo
  #+data_block_exclude: true
  a
    b
  c
  __END__
  foo
EOS
# >> head: {"partial_code_name"=>"foo", "data_block_exclude"=>"true"}
# >> body: "a\n  b\nc\n__END__\nfoo\n"
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
# >> Source2MD::Formatter::TypeSourceBlock => false
# >> Source2MD::Formatter::TypeText => false
# >> Source2MD::Formatter::TypePartialCode => true
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypePartialCode
# >> > {"partial_code_name"=>"foo", "data_block_exclude"=>"true"}
# >> > ------------------------------------------------------------ in
# >> > a
# >> >   b
# >> > c
# >> > __END__
# >> > foo
# >> > 
# >> > 
# >> > ------------------------------------------------------------ out
# >> > ```ruby:foo
# >> > a
# >> >   b
# >> > c
# >> > ```
# >> > 
# >> > ------------------------------------------------------------
# >> ```ruby:foo
# >> a
# >>   b
# >> c
# >> ```
