class AddReferencesToTrack < ActiveRecord::Migration[7.0]
  def change
    add_reference :tracks, :bus, null: false, foreign_key: true
    add_reference :tracks, :ticket, null: false, foreign_key: true
    add_reference :tracks, :booking_stations, null: false, foreign_key: true
  end
end
