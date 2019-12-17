class CreateHourlyData < ActiveRecord::Migration[5.2]
  def change
    create_table :hourly_data do |t|
      t.datetime :datetime
      t.integer :energy

      t.timestamps
    end
  end
end
