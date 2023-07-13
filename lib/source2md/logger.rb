module Source2MD
  mattr_accessor(:logger) { ActiveSupport::Logger.new(STDOUT, level: :info) }
end
