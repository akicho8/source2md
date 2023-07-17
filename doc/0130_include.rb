require "./setup"

### Include Other File As Code Block ###

#+BEGIN_SRC
File.write("/tmp/other.html", <<~EOS)
<p>Hello<p>
EOS

puts Source2MD::Section.new(<<~EOS).to_md
  #+include: /tmp/other.html

  #+include: /tmp/other.html xml:SAMPLE
EOS
#+END_SRC

# > ```html:other.html
# > <p>Hello<p>
# > ```
# >
# > ```xml:SAMPLE
# > <p>Hello<p>
# > ```
