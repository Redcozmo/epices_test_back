class CreateHourlyData < ActiveRecord::Migration[5.2]
  def change
    create_table :hourly_data do |t|
      t.datetime :datetime
      t.integer :hourly_production

      t.timestamps
    end
  end
end
