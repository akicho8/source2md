$LOAD_PATH.unshift("#{__dir__}/../lib")
$LOAD_PATH.unshift(__dir__)
require "source2md"
require "rspec"

Pathname.glob("#{__dir__}/**/*_support.rb") { |e| require e.to_s }
Pathname.glob("#{__dir__}/support/**/*.rb") { |e| require e.to_s }

Zeitwerk::Loader.eager_load_all

Source2MD.logger.level = :error
Source2MD.xmp_out_exclude = true
Source2MD.data_block_exclude = true

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :test_unit
  config.example_status_persistence_file_path = "#{__dir__}/.all_test_result.txt"
end

if true
  require "tempfile"            # for capture
  require "active_support/testing/stream"
  RSpec.configure do |config|
    config.include ActiveSupport::Testing::Stream
  end
end
