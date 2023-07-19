#+hidden: true
require "./setup"

### Raw include ###

#+BEGIN_SRC
File.write("/tmp/hello.html", "<p>Hello</p>")

puts Source2MD::Section.new(<<~EOS).to_md
  #+raw_include: /tmp/hello.html
EOS
#+END_SRC

# > ```
# > <p>Hello</p>
# > ```
