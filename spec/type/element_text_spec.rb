require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# - foo
#   http://example.com/
# - bar: http://example.com/
EOS
      assert { actual == <<~EOS.strip }
- foo
  http://example.com/
- bar: http://example.com/
EOS
    end
  end
end
