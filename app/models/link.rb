class Link < ApplicationRecord
  validates :title, presence: true
  validates :target_url, presence: true,
            format: { with: /\Ahttp[s]?:\/\//, message: 'should start with http://' }
end
