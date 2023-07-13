require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# title2: (foo)
EOS
# >> title2: (foo)
# >> --------------------------------------------------------------------------------
# >> Source2MD::Type::ElementTitle2
# >> 
# >> head:
# >> {:title2=>"(foo)"}
# >> 
# >> in:
# >> 
# >> 
# >> out:
# >> ## (foo) ##
# >> --------------------------------------------------------------------------------
# >> title2: (foo)
# >> ## (foo) ##
