class Venue < ApplicationRecord
  belongs_to :host, class_name: "User", foreign_key: 'user_id'
  has_many :events, dependent: :destroy
  has_many :artists, through: :events, source: :user

  mount_uploader :photo, PhotoUploader
end
