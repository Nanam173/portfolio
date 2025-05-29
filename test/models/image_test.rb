require "test_helper"

class ImageTest < ActiveSupport::TestCase
  test "need to have work" do
    image = Image.new(work: nil)
    assert_not image.valid?
    assert_includes image.errors[:work], "must exist"
  end
end
