class ChangeDefaultToUsers < ActiveRecord::Migration
  def change
    change_column :users, :role, :string, :default => 'passenger'
  end
end
