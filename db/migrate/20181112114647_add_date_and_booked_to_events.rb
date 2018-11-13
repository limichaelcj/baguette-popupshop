class AddDateAndBookedToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :date, :date
    add_column :events, :booked, :boolean, default: false
  end
end
