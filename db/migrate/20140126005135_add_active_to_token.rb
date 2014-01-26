class AddActiveToToken < ActiveRecord::Migration
  def change
    add_column :tokens, :active, :boolean, column_options: {null: false, default: true}
  end
end
