require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
code
EOS
# >> ```ruby
# >> code
# >> ```
