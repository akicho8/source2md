require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# alert: (foo)
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Type::ElementAlert
# >> 
# >> head:
# >> {:alert=>"(foo)"}
# >> 
# >> in:
# >> 
# >> 
# >> out:
# >> :::message alert
# >> (foo)
# >> :::
# >> --------------------------------------------------------------------------------
# >> :::message alert
# >> (foo)
# >> :::
