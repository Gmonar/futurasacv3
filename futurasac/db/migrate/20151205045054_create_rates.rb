class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :price
      t.string :district_start
      t.string :district_end
      t.boolean :status

      t.timestamps null: false
    end
  end
end
