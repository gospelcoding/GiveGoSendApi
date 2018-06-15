class Message < ApplicationRecord
  belongs_to :missionary
  belongs_to :user
end
