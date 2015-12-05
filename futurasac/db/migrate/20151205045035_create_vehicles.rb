class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :color
      t.string :plaque
      t.string :brand
      t.string :category
      t.boolean :status
      t.references :driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
