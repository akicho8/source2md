require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# |---+---+---|
# | x | x | x |
# |---+---+---|
# | x | x | x |
# | x | x | x |
# |---+---+---|
EOS
# >> --------------------------------------------------------------------------------
# >> Source2MD::Type::ElementTable
# >> 
# >> head:
# >> {}
# >> 
# >> in:
# >> # |---+---+---|
# >> # | x | x | x |
# >> # |---+---+---|
# >> # | x | x | x |
# >> # | x | x | x |
# >> # |---+---+---|
# >> 
# >> out:
# >> | x | x | x |
# >> |---|---|---|
# >> | x | x | x |
# >> | x | x | x |
# >> --------------------------------------------------------------------------------
# >> | x | x | x |
# >> |---|---|---|
# >> | x | x | x |
# >> | x | x | x |
