class ChangeDefaultActiveToToken2 < ActiveRecord::Migration
  def change
    change_column :tokens, :active, :boolean, :null=> false, :default => 1
  end
end