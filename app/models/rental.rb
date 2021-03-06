class Rental < ApplicationRecord
  belongs_to :customer
  belongs_to :video

  validates :due_date, presence: true
  # validates :customer, presence: true

  def decrease_available_inventory
    self.video.available_inventory -= 1
    self.video.save!
  end

  def increase_videos_checked_out
    self.customer.videos_checked_out_count += 1
    self.customer.save!
  end

end
