require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
## foo
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Type::ElementDeepComment
# >> 
# >> head:
# >> {}
# >> 
# >> in:
# >> ## foo
# >> 
# >> out:
# >> ```ruby
# >> # foo
# >> ```
# >> --------------------------------------------------------------------------------
# >> ```ruby
# >> # foo
# >> ```
