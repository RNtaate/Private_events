class Event < ApplicationRecord
  has_many :event_attendances, foreign_key: :attended_event_id, dependent: :destroy
  has_many :attendees, through: :event_attendances, dependent: :destroy
  belongs_to :creator, class_name: 'User'
end
