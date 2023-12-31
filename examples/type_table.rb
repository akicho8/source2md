#+hidden: true
require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
# |---+---+---|
# | 1 | 1 | 1 |
# |---+---+---|
# | 1 | 1 | 1 |
# | 1 | 1 | 1 |
# |---+---+---|
EOS

puts Source2MD::Element.new(<<~EOS).to_md
# | 2 | 2 | 2 |
# |---+---+---|
# | 2 | 2 | 2 |
# | 2 | 2 | 2 |
EOS

# >> | 1 | 1 | 1 |
# >> |---|---|---|
# >> | 1 | 1 | 1 |
# >> | 1 | 1 | 1 |
# >> | 2 | 2 | 2 |
# >> |---|---|---|
# >> | 2 | 2 | 2 |
# >> | 2 | 2 | 2 |
