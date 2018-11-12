class User < ApplicationRecord
  has_many :owned_venues, class_name: "Venue"
  has_many :bookings
  has_many :booked_venues, through: :bookings, source: :venue

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
