require "spec_helper"

module Source2MD
  describe Generator do
    before do
      Pathname("_input.rb").write("# (content)")
    end

    after do
      Pathname("_input.rb").delete
      Pathname("_output.md").delete rescue nil
    end

    it "files option" do
      output = capture("stdout") do
        Generator.new(files: ["_input.rb"]).call
      end
      assert { output == "(content)\n" }
    end

    it "glob option" do
      output = capture("stdout") do
        Generator.new(glob: "_i*.rb").call
      end
      assert { output == "(content)\n" }
    end

    it "output file is write protected" do
      capture("stdout") do
        Generator.new(files: ["_input.rb"], output_file: "_output.md").call
      end
      assert { Pathname("_output.md").stat.writable? == false }
    end
  end
end
# >> .F
# >>
# >> Failures:
# >>
# >>   1) Source2MD::Generator glob option
# >>      Failure/Error: Unable to find - to read failed line
# >>      Test::Unit::AssertionFailedError:
# >>      # -:25:in `block (2 levels) in <module:Source2MD>'
# >>
# >> Finished in 0.01412 seconds (files took 0.28313 seconds to load)
# >> 2 examples, 1 failure
# >>
# >> Failed examples:
# >>
# >> rspec -:21 # Source2MD::Generator glob option
# >>
