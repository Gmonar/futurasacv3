class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :identitydocument
      t.string :license
      t.boolean :status

      t.timestamps null: false
    end
  end
end
