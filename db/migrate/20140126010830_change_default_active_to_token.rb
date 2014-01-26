class ChangeDefaultActiveToToken < ActiveRecord::Migration
  def change
    change_column :tokens, :active, :boolean, :default => true
  end
end