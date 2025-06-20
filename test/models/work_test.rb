# == Schema Information
#
# Table name: works
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class WorkTest < ActiveSupport::TestCase
  test "need to have name" do
    work = Work.new(name: nil, description: "Test description")
    assert_not work.valid?
    assert_includes work.errors[:name], "can't be blank"
  end

  test "need to have description" do
    work = Work.new(name: "Test name", description: nil)
    assert_not work.valid?
    assert_includes work.errors[:description], "can't be blank"
  end
end
