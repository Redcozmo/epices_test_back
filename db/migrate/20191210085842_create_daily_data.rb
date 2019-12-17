class CreateDailyData < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_data do |t|
      t.date :date
      t.integer :daily_energy

      t.timestamps
    end
  end
end
