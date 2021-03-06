class Video < ApplicationRecord

  has_many :rentals
  has_many :customers, through: :rentals

  validates :title, presence: true, uniqueness: true
  validates :release_date, presence: true
  validates :available_inventory, presence: true, numericality: { greater_than_or_equal_to: 0 }

  validates :total_inventory, presence: true, numericality: { greater_than: 0}
  validates :overview, presence: true

end
