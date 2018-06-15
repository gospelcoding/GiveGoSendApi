class PrayerRequest < ApplicationRecord
  belongs_to :missionary

  has_and_belongs_to_many :users # Users who prayed for this
end
