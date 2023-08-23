class CreateBus < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.string :bus_model
      t.integer :number_of_seats
      t.jsonb :amenities
      t.integer :rating

      t.timestamps
    end
  end
end
