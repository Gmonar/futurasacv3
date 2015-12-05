class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.string :sourceaddress
      t.datetime :servicehour
      t.string :targetaddress
      t.references :rate, index: true, foreign_key: true
      t.date :servicedate
      t.integer :passengernumber
      t.references :vehicle, index: true, foreign_key: true
      t.string :paymenttype
      t.date :registrationdate
      t.datetime :registrationhour
      t.string :rating
      t.text :commentservice
      t.string :status

      t.timestamps null: false
    end
  end
end
