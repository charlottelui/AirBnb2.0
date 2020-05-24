class Flat < ApplicationRecord
  belongs_to: :user

  validates :address, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :flat_type, inclusion: { in: ["entire place", "private room", "shared room"]}
end
