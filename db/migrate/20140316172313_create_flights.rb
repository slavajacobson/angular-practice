class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :number
      t.string :origin
      t.string :destination
      t.integer :price

      t.timestamps
    end
  end
end
