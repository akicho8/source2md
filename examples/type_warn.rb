#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+info: (foo)
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Part::ElementInfo
# >> 
# >> head:
# >> {:info=>"(foo)"}
# >> 
# >> in:
# >> 
# >> 
# >> out:
# >> :::message
# >> (foo)
# >> :::
# >> --------------------------------------------------------------------------------
# >> :::message
# >> (foo)
# >> :::
