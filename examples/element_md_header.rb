require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md
---
foo
---
EOS
# >> ---
# >> foo
# >> ---
