class StatusUpdate < ApplicationRecord
  belongs_to :missionary
  belongs_to :prayer_request, required: false

  has_and_belongs_to_many :photos
end
