class Work < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true

    has_many :images, dependent: :destroy
end
