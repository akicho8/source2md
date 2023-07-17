#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+alert: (foo)
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Part::TypeAlert
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
