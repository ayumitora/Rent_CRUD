class Station < ApplicationRecord
  validates :route_name, presence: true
  validates :walking_minutes, presence: true
  validates :station_name, presence: true
  belongs_to :rent_property, inverse_of: :stations, optional: true
end
