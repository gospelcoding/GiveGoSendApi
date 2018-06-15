class Missionary < ApplicationRecord
  belongs_to :organization

  has_many :users
  has_many :kids
  has_many :messages
  has_and_belongs_to_many :followers, class_name: 'User'
  has_many :photos
  has_many :prayer_requests
  has_many :status_updates
end
