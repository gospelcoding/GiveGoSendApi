class User < ApplicationRecord
  belongs_to :missionary, required: false  # My own missionary profile

  has_and_belongs_to_many :missionaries  # Missionaries that I follow
  has_and_belongs_to_many :prayer_requests # Requests that I prayed for

  has_secure_password

  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
end
