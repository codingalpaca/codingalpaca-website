class Link < ApplicationRecord
  validates :title, presence: true
  validates :pixel_event_name, presence: true
  validates :target_url, presence: true,
            format: { with: /\Ahttp[s]?:\/\//, message: 'should start with http://' }
end
