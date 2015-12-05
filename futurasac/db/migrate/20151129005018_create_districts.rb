class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :description
      t.boolean :status

      t.timestamps null: false
    end
  end
end
