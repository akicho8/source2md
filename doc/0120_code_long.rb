#+hidden: true
require "./setup"

#+title3: Source block with many lines

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+BEGIN_SRC
  hello = -> {
    "Hello, world!"
  }

  hello.call
  #+END_SRC
EOS
#+END_SRC

# > ```ruby
# > hello = -> {
# >   "Hello, world!"
# > }
# >
# > hello.call
# > ```
# >> ["/Users/ikeda/src/zenn/source2md/lib/source2md/scanner.rb:14", :to_a, /(?m-ix:(?-mix:(?-mix:^)(?:(?-mix:#|\/\/)))\+BEGIN_SRC.*?(?-mix:(?-mix:^)(?:(?-mix:#|\/\/)))\+END_SRC)|(?m-ix:.*?\R{2,})/]
# >> ```ruby
# >> hello = -> {
# >>   "Hello, world!"
# >> }
# >> 
# >> hello.call
# >> ```
