class Missionary < ApplicationRecord
  belongs_to :organization

  has_many :people
  has_many :kids
  has_many :messages
  has_and_belongs_to_many :followers, class_name: 'Person'
  has_many :photos
  has_many :prayer_requests
  has_many :status_updates
end
