require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
require "setup"
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Part::ElementReject
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
