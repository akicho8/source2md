require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# name: (name)
# desc: (desc)
# comment: (comment)
code1
#
code2
EOS
# >> ### (name)
# >> 
# >> (desc)
# >> 
# >> ```ruby
# >> code1
# >> 
# >> code2
# >> ```
# >> 
# >> (comment)
