class Event < ApplicationRecord
  belongs_to :venue
  belongs_to :artist, class_name: "User", foreign_key: 'user_id'

  validates :date, presence: true
end
