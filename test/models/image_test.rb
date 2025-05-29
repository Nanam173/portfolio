# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  file_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  work_id    :integer          not null
#
# Indexes
#
#  index_images_on_work_id  (work_id)
#
# Foreign Keys
#
#  work_id  (work_id => works.id)
#
require "test_helper"

class ImageTest < ActiveSupport::TestCase
  test "need to have work" do
    image = Image.new(work: nil)
    assert_not image.valid?
    assert_includes image.errors[:work], "must exist"
  end
end
