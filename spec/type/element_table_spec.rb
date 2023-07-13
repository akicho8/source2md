require "spec_helper"

module Source2MD
  describe do
    it "works" do
      actual = Element.new(<<~EOS).to_md
# |---+---+---|
# | h | h | h |
# |---+---+---|
# | d | d | d |
# | d | d | d |
# |---+---+---|
EOS
      assert { actual == <<~EOS.strip }
| h | h | h |
|---|---|---|
| d | d | d |
| d | d | d |
EOS
    end

    it "works" do
      actual = Element.new(<<~EOS).to_md
# | h | h | h |
# |---+---+---|
# | d | d | d |
EOS
      assert { actual == <<~EOS.strip }
| h | h | h |
|---|---|---|
| d | d | d |
EOS
    end
  end
end
