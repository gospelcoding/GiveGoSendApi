class StatusUpdate < ApplicationRecord
  belongs_to :missionary
  belongs_to :prayer_request
end
