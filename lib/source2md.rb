require "active_support"
require "active_support/logger"

require "active_support/core_ext/hash"
require "active_support/core_ext/string"

require "active_support/configurable"

require "pathname"
require "thor"
require "table_format"

module Source2MD
  include ActiveSupport::Configurable
  config_accessor(:debug) { false }
  config_accessor(:xmp_out_exclude) { false }
  config_accessor(:readonly) { true }
  config_accessor(:default_lang) { "ruby" }
  config_accessor(:data_block_exclude) { false }
end

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.ignore("#{__dir__}/source2md/logger.rb")
loader.ignore("#{__dir__}/source2md/**/_*.rb")
loader.inflector.inflect("source2md" => "Source2MD")
loader.inflector.inflect("re" => "RE")
loader.log! if false
loader.setup

require "source2md/logger"

loader.eager_load if true
