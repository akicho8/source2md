require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# - foo
#   https://example.com/
EOS
# >> - foo
# >>   https://example.com/
