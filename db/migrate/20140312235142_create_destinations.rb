class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.references :airport, index: true


      t.timestamps
    end
  end
end
