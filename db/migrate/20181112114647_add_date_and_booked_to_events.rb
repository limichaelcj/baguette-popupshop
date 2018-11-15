class AddDateAndBookedToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :date, :date, null: false
    add_column :events, :booked, :boolean, default: false
  end
end
