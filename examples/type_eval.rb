#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+eval: Source2MD.lang_default = "lisp"
EOS
# >> head: {"eval"=>"Source2MD.lang_default = \"lisp\""}
# >> body: ""
# >> Source2MD::Formatter::TypeEval => Source2MD.lang_default = "lisp"
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeEval
# >> > {"eval"=>"Source2MD.lang_default = \"lisp\""}
# >> > ------------------------------------------------------------ in
# >> > 
# >> > 
# >> > ------------------------------------------------------------ out
# >> > 
# >> > ------------------------------------------------------------
# >> 
