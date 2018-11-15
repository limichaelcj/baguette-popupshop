class Venue < ApplicationRecord
  belongs_to :host, class_name: "User", foreign_key: 'user_id'
  has_many :events, dependent: :destroy
  has_many :artists, through: :events, source: :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader

  validates :name, :address, :description, presence: true
  validates :price, presence: true, numericality: true
end
