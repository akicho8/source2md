$LOAD_PATH.unshift("#{__dir__}/../lib")
require "source2md"
Source2MD.logger.level = :debug if false

# Source2MD::RE.update do |e|
#   e.prefix_re = %r{^}
# end
