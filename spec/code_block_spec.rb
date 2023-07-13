require "spec_helper"

module Source2MD
  describe CodeBlock do
    it "works" do
      s = CodeBlock.new(<<~EOS).to_md
        a # => 1
        #
        bb   # => 2
        cccc
      EOS
      assert { s == <<~EOS.strip }
        ```ruby
        a   # => 1

        bb  # => 2
        cccc
        ```
      EOS
    end
  end
end
