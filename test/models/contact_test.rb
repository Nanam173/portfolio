# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ContactTest < ActiveSupport::TestCase
  test "need to have name" do
    contact = Contact.new
    assert_not contact.valid?
    assert_includes contact.errors[:name], "can't be blank"
    contact.update(name: "Test Name")
    assert contact.valid?
    assert_not_includes contact.errors[:name], "can't be blank"
  end
end
