#+hidden: true
require "./setup"

### Parse include ###

# Paste the results of processing other files with the same rules.

#+BEGIN_SRC
File.write("/tmp/hello.rb", <<~EOS)
# foo
EOS

puts Source2MD::Section.new(<<~EOS).to_md
  #+parse_include: /tmp/hello.rb
EOS
#+END_SRC

# > foo
