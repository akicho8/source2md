#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md

#+code_include: input.yml ruby:abc (AC)
#+name:

EOS
# >> head: {"code_include"=>"input.yml ruby:abc (AC)", "name"=>""}
# >> body: ""
# >> Source2MD::Formatter::TypeHidden => false
# >> Source2MD::Formatter::TypeEval => 
# >> Source2MD::Formatter::TypeCodeInclude => input.yml ruby:abc (AC)
# >> > -------------------------------------------------------------------------------- Source2MD::Formatter::TypeCodeInclude
# >> > {"code_include"=>"input.yml ruby:abc (AC)", "name"=>""}
# >> > ------------------------------------------------------------ in
# >> > 
# >> > 
# >> > ------------------------------------------------------------ out
# >> > ```ruby:abc (AC)
# >> > ---
# >> > one:
# >> >   foo: 1
# >> > ```
# >> > 
# >> > ------------------------------------------------------------
# >> ```ruby:abc (AC)
# >> ---
# >> one:
# >>   foo: 1
# >> ```
