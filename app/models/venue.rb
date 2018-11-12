class Venue < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :bookings

  mount_uploader :photo, PhotoUploader
end
