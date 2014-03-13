class Airport < ActiveRecord::Base
	has_and_belongs_to_many :destinations, class_name: "Airport", :association_foreign_key => "destination_id", :join_table => "airports_destinations"
	
	
	def to_param
      "#{code}"
    end 
end
