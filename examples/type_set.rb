#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+set: Source2MD.default_lang = "lisp"
EOS
# >> head: {"set"=>"Source2MD.default_lang = \"lisp\""}
# >> body: ""
# >> Source2MD::Formatter::TypeSet => Source2MD.default_lang = "lisp"
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeSet
# >> > {"set"=>"Source2MD.default_lang = \"lisp\""}
# >> > ------------------------------------------------------------ in
# >> > 
# >> > 
# >> > ------------------------------------------------------------ out
# >> > 
# >> > ------------------------------------------------------------
# >> 
