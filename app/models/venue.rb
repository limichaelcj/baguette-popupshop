class Venue < ApplicationRecord
  include PgSearch

  belongs_to :host, class_name: "User", foreign_key: 'user_id'
  has_many :events, dependent: :destroy
  has_many :artists, through: :events, source: :user

  mount_uploader :photo, PhotoUploader
  validates :name, :address, :description, presence: true
  validates :price, presence: true, numericality: true

  # geocoder
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # pg_search venue_info = name, address, medium, style
  pg_search_scope :search_by_venue_info, :against => [
    [:medium, 'A'],
    [:address, 'B'],
    [:style, 'C'],
    :name
  ]

  def is_host?
    is_host
  end

end
