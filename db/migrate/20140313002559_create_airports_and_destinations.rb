class CreateAirportsAndDestinations < ActiveRecord::Migration
  def change
    create_table :airports_destinations do |t|
    	t.belongs_to :airport
    	t.belongs_to :destination
    end
  end
end
