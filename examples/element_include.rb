require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md

#+include: input.yml
#+name:

EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Type::ElementInclude
# >> 
# >> head:
# >> {:include=>"input.yml", :name=>""}
# >> 
# >> in:
# >> 
# >> 
# >> out:
# >> ```yaml
# >> ---
# >> one:
# >>   foo: 1
# >> ```
# >> --------------------------------------------------------------------------------
# >> ```yaml
# >> ---
# >> one:
# >>   foo: 1
# >> ```
