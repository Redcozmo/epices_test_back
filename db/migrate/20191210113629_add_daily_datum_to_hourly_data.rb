class AddDailyDatumToHourlyData < ActiveRecord::Migration[5.2]
  def change
    add_reference :hourly_data, :daily_datum, foreign_key: true
  end
end
