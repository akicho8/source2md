#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
## foo ##
EOS
# >> head: {}
# >> body: "## foo ##\n"
# >> Source2MD::Formatter::TypeHidden => false
# >> Source2MD::Formatter::TypeMdTitle =>
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
# >> > ## foo ##
# >> >
# >> >
# >> > ------------------------------------------------------------ out
# >> > ```ruby
# >> > ## foo ##
# >> > ```
# >> >
# >> > ------------------------------------------------------------
# >> ```ruby
# >> ## foo ##
# >> ```
