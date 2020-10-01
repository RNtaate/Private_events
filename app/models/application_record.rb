class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
end
