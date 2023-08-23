class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :bus
  belongs_to :track
  belongs_to :booking_station
end
