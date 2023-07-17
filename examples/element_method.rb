require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
#+name: (name)
#+desc: (desc)
#+comment: (comment)
code1
#
code2
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Part::ElementMethod
# >> 
# >> head:
# >> {:name=>"(name)", :desc=>"(desc)", :comment=>"(comment)"}
# >> 
# >> in:
# >> code1
# >> #
# >> code2
# >> 
# >> out:
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
# >> --------------------------------------------------------------------------------
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
