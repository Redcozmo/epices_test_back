class AddInverterToDailyData < ActiveRecord::Migration[5.2]
  def change
    add_reference :daily_data, :inverter, foreign_key: true
  end
end
