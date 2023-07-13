require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# title2: (foo)
EOS
# >> ## (foo)
