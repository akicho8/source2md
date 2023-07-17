#+hidden: true
require "./setup"

Source2MD::Generator.new(files: ["input.rb"], output_file: "output.md").call
