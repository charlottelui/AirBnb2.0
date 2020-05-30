class Flat < ApplicationRecord
  belongs_to :user

  has_many_attached :photos

  validates :address, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :flat_type, presence: true
  validates :guests, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :flat_type, inclusion: { in: ["Entire place", "Private room", "Shared room"]}

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
