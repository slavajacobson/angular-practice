class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :number
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
