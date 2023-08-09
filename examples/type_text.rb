#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+squish: true
# a
# b
#
# c
# d
EOS

puts Source2MD::Element.new(<<~EOS).to_md
#+squish: true
# a
# b
#
# c
# d
EOS

puts Source2MD::Element.new(<<~EOS).to_md
#+hankaku_kana: true
# ｱア
EOS

# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeText
# >> > {"squish"=>"true"}
# >> > ------------------------------------------------------------ in
# >> > # a
# >> > # b
# >> > #
# >> > # c
# >> > # d
# >> >
# >> > ------------------------------------------------------------ out
# >> > a b c d
# >> > ------------------------------------------------------------
# >> a b c d
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeText
# >> > {"squish"=>"true"}
# >> > ------------------------------------------------------------ in
# >> > # a
# >> > # b
# >> > #
# >> > # c
# >> > # d
# >> >
# >> > ------------------------------------------------------------ out
# >> > a b c d
# >> > ------------------------------------------------------------
# >> a b c d
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeText
# >> > {"hankaku_kana"=>"true"}
# >> > ------------------------------------------------------------ in
# >> > # ｱア
# >> >
# >> > ------------------------------------------------------------ out
# >> > ｱｱ
# >> > ------------------------------------------------------------
# >> ｱｱ
