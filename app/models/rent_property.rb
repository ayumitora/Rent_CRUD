class RentProperty < ApplicationRecord
  validates :property_name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :note, presence: true
  has_many :stations, inverse_of: :rent_property, dependent: :destroy
  accepts_nested_attributes_for :stations
end
