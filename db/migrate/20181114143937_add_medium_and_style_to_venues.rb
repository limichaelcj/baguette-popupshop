class AddMediumAndStyleToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :medium, :string
    add_column :venues, :style, :string
  end
end
