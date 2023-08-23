class CreateBus < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.string :bus_model
      t.string :number_of_seats
      t.string :integer
      t.jsonb :amenities
      t.integer :rating

      t.timestamps
    end
  end
end
