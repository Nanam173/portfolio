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
class Image < ApplicationRecord
  belongs_to :work
end
