class ChangeAddUseridToDistricts < ActiveRecord::Migration
  def change
    add_reference :districts, :user, index: true
    add_foreign_key :districts, :users
  end
end
