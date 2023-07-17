require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# - foo
#   https://example.com/
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Part::ElementUncomment
# >> 
# >> head:
# >> {}
# >> 
# >> in:
# >> # - foo
# >> #   https://example.com/
# >> 
# >> out:
# >> - foo
# >>   https://example.com/
# >> --------------------------------------------------------------------------------
# >> - foo
# >>   https://example.com/
