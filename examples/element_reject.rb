require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
require "setup"
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Type::ElementReject
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
