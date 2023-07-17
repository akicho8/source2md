require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
require "setup"
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Part::TypeReject
# >> 
# >> head:
# >> {}
# >> 
# >> in:
# >> require "setup"
# >> 
# >> out:
# >> --------------------------------------------------------------------------------
# >> 
