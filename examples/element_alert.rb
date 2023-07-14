require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# alert: (info)
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Type::ElementAlert
# >> 
# >> head:
# >> {:alert=>"(info)"}
# >> 
# >> in:
# >> 
# >> 
# >> out:
# >> :::message alert
# >> (info)
# >> :::
# >> --------------------------------------------------------------------------------
# >> :::message alert
# >> (info)
# >> :::
