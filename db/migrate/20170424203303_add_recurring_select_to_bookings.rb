class AddRecurringSelectToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :recurring, :text
  end
end
