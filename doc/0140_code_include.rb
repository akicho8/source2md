#+hidden: true
require "./setup"

### Code include ###

#+BEGIN_SRC
File.write("/tmp/hello.html", <<~EOS)
<p>Hello</p>
EOS

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
