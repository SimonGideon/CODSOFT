class CreateBookingStations < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_stations do |t|
      t.string :town
      t.string :landmark
      t.references :track, null: false, foreign_key: true

      t.timestamps
    end
  end
end
