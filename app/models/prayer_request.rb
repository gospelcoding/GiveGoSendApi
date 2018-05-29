class PrayerRequest < ApplicationRecord
  belongs_to :missionary

  has_and_belongs_to_many :people # People who prayed for this
end
