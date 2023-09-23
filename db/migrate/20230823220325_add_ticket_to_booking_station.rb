class AddTicketToBookingStation < ActiveRecord::Migration[7.0]
  def change
    add_reference :booking_stations, :ticket, null: false, foreign_key: true
  end
end
