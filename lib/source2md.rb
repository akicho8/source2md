require "active_support/core_ext/hash"
require "active_support/configurable"
require "zeitwerk"
require "table_format"
require "pathname"
require "thor"

module Source2MD
  include ActiveSupport::Configurable
  config_accessor(:debug) { false }
  config_accessor(:quiet) { false }
end

loader = Zeitwerk::Loader.for_gem
loader.ignore("#{__dir__}/source2md/**/_*.rb")

loader.inflector.inflect("source2md" => "Source2MD")

loader.log! if false
loader.setup

loader.eager_load if true
