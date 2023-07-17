require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
require "./setup"
EOS
      assert { actual.nil? }
    end
  end
end
