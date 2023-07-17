#+hidden: true
require "./setup"

### Hide paragraph ###

#+BEGIN_SRC
puts Source2MD::Section.new(<<~EOS).to_md
  #+hidden: true
  require "rbconfig"

  RbConfig::CONFIG["platform"]  # => "arm64-darwin22"
EOS
#+END_SRC

# > ```ruby
# > RbConfig::CONFIG["platform"]  # => "arm64-darwin22"
# > ```
