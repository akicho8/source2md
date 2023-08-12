#+hidden: true
require "./setup"

#+title3: Code include

# Insert inside the code block.

#+BEGIN_SRC
File.write("/tmp/hello.html", "<p>Hello</p>")

puts Source2MD::Section.new(<<~EOS).to_md
  #+code_include: /tmp/hello.html

  #+code_include: /tmp/hello.html xml:OUTPUT
EOS
#+END_SRC

# > ````
# > ```html:hello.html
# > <p>Hello</p>
# > ```
# >
# > ```xml:OUTPUT
# > <p>Hello</p>
# > ```
# > ````
# >> ```html:hello.html
# >> <p>Hello</p>
# >> ```
# >> 
# >> 
# >> ```xml:OUTPUT
# >> <p>Hello</p>
# >> ```
