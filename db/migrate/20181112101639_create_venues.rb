class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.float :price, default: 1
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
