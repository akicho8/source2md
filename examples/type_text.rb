#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+oneline: true
#+hankaku_kana: true
# a
# b
#
# c
# d
#
# ｱア
#
EOS
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeText
# >> > {"oneline"=>"true", "hankaku_kana"=>"true"}
# >> > ------------------------------------------------------------ in
# >> > # a
# >> > # b
# >> > #
# >> > # c
# >> > # d
# >> > #
# >> > # ｱア
# >> > #
# >> > 
# >> > ------------------------------------------------------------ out
# >> > abcdｱｱ
# >> > ------------------------------------------------------------
# >> abcdｱｱ
