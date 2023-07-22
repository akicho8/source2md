#+hidden: true
require "./setup"

### Hankaku Kana ###

# JISX0208 Katakana to JISX0201 Katakana

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+hankaku_kana: true
  # ｱア
EOS
#+END_SRC

# > ｱｱ
