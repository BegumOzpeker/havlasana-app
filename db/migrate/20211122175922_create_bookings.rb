class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :notes

      t.timestamps
    end
  end
end
