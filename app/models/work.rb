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
class Work < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true

    has_many :images, dependent: :destroy
end
