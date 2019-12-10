class CreateInverters < ActiveRecord::Migration[5.2]
  def change
    create_table :inverters do |t|
      t.integer :num

      t.timestamps
    end
  end
end
