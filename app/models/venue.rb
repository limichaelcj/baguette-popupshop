class Venue < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :bookings
end
