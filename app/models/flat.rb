class Flat < ApplicationRecord
  belongs_to :user

  validates :address, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :flat_type, presence: true
  validates :guests, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :flat_type, inclusion: { in: ["Entire place", "Private room", "Shared room"]}
end
