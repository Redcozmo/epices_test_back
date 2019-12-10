class CreateDailyData < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_data do |t|
      t.datetime :datetime
      t.integer :daily_production

      t.timestamps
    end
  end
end
