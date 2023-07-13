require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# |---+---+---|
# | x | x | x |
# |---+---+---|
# | x | x | x |
# | x | x | x |
# |---+---+---|
EOS
# >> | x | x | x |
# >> |---|---|---|
# >> | x | x | x |
# >> | x | x | x |
