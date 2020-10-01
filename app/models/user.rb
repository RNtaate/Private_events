class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :created_events, foreign_key: :creator_id, class_name: 'Event', dependent: :destroy

  has_many :event_attendances, foreign_key: :attendee_id, dependent: :destroy
  has_many :attended_events, through: :event_attendances, dependent: :destroy
end
