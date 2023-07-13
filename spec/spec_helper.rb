$LOAD_PATH.unshift("#{__dir__}/../lib")
$LOAD_PATH.unshift(__dir__)
require "source2md"
require "rspec"

Pathname.glob("#{__dir__}/**/*_support.rb") { |e| require e.to_s }
Pathname.glob("#{__dir__}/support/**/*.rb") { |e| require e.to_s }

Zeitwerk::Loader.eager_load_all

Source2MD.quiet = true

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :test_unit
  config.example_status_persistence_file_path = "#{__dir__}/.all_test_result.txt"
end
