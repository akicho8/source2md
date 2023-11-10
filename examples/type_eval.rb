#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+eval: Source2MD.default_lang = "lisp"
EOS
# >> head: {"eval"=>"Source2MD.default_lang = \"lisp\""}
# >> body: ""
# >> Source2MD::Formatter::TypeEval => Source2MD.default_lang = "lisp"
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeEval
# >> > {"eval"=>"Source2MD.default_lang = \"lisp\""}
# >> > ------------------------------------------------------------ in
# >> > 
# >> > 
# >> > ------------------------------------------------------------ out
# >> > 
# >> > ------------------------------------------------------------
# >> 
