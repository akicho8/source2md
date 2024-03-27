#+hidden: true
require "./setup"
Source2MD.oneline = true

puts Source2MD::Element.new(<<~EOS).to_md
# http://
# http://
EOS

# >> head: {}
# >> body: "# http://\n# http://\n"
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
# >> Source2MD::Formatter::TypeMdHeader => 
# >> Source2MD::Formatter::TypeCodeBlock => false
# >> Source2MD::Formatter::TypeQuote => 
# >> Source2MD::Formatter::TypeList => false
# >> Source2MD::Formatter::TypeUrlList => true
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeUrlList
# >> > {}
# >> > ------------------------------------------------------------ in
# >> > # http://
# >> > # http://
# >> > 
# >> > 
# >> > ------------------------------------------------------------ out
# >> > http://
# >> > http://
# >> > 
# >> > ------------------------------------------------------------
# >> http://
# >> http://
