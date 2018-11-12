class AddDateAndBookedToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date, :date
    add_column :bookings, :booked, :boolean
  end
end
