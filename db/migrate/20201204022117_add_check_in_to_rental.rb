class AddCheckInToRental < ActiveRecord::Migration[6.0]
  def change
    add_column :rentals, :check_in_date, :date
  end
end
