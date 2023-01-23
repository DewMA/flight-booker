class AddFlightFieldToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :flight, null: false, foreign_key: true
  end
end
