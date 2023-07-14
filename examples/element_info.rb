require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# info: (info)
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Type::ElementInfo
# >> 
# >> head:
# >> {:info=>"(info)"}
# >> 
# >> in:
# >> 
# >> 
# >> out:
# >> :::message
# >> (info)
# >> :::
# >> --------------------------------------------------------------------------------
# >> :::message
# >> (info)
# >> :::
