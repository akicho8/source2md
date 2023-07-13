desc "About"
task :about do
  require "source2md"
  puts Source2MD::VERSION
end
