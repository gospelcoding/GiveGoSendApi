class Photo < ApplicationRecord
  belongs_to :missionary

  has_and_belongs_to_many :status_updates
end
