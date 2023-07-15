require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# title3: (foo)
EOS
# >> title3: (foo)
# >> --------------------------------------------------------------------------------
# >> Source2MD::Type::ElementTitle3
# >> 
# >> head:
# >> {:title3=>"(foo)"}
# >> 
# >> in:
# >> 
# >> 
# >> out:
# >> ## (foo) ##
# >> --------------------------------------------------------------------------------
# >> title3: (foo)
# >> ## (foo) ##
