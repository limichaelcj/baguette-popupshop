class Venue < ApplicationRecord
  belongs_to :host, class_name: "User", foreign_key: 'user_id'
  has_many :bookings, dependent: :destroy
  has_many :artists, through: :bookings, source: :user

  mount_uploader :photo, PhotoUploader
end
