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
class Contact < ApplicationRecord
    validates :name, presence: true

    def safe_url
        uri = URI.parse(url)
        uri.to_s if uri.is_a?(URI::HTTP)
    rescue URI::InvalidURIError
        nil
    end
end
