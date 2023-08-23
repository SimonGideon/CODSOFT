class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :booking_ref
      t.integer :seat_number
      t.references :user, null: false, foreign_key: true
      t.references :bus, null: false, foreign_key: true
      t.references :track, null: false, foreign_key: true
      t.references :booking_station, null: false, foreign_key: true

      t.timestamps
    end
  end
end
