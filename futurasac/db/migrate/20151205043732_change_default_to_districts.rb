class ChangeDefaultToDistricts < ActiveRecord::Migration
  def change
    change_column :districts, :status, :boolean, :default => true
  end
end
