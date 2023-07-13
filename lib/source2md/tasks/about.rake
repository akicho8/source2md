desc "About"
task :about do
  require "source2md"
  tp Source2MD::VERSION
end
