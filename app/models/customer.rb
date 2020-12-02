class Customer < ApplicationRecord

  # unique name?
  validates :name, presence: true
  validates :videos_checked_out_count, numericality: { greater_than: 0 }
end