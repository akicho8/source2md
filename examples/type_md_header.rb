#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# ---
# foo: bar
# ---
EOS

# >> head: {}
# >> body: "# ---\n# foo: bar\n# ---\n"
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
# >> Source2MD::Formatter::TypeMdHeader => # ---
# >> # foo: bar
# >> # ---
# >>
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeMdHeader
# >> > {}
# >> > ------------------------------------------------------------ in
# >> > # ---
# >> > # foo: bar
# >> > # ---
# >> >
# >> >
# >> > ------------------------------------------------------------ out
# >> > ---
# >> > foo: bar
# >> > ---
# >> >
# >> > ------------------------------------------------------------
# >> ---
# >> foo: bar
# >> ---
