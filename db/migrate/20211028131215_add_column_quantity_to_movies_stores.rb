class AddColumnQuantityToMoviesStores < ActiveRecord::Migration[5.2]
  def change
    add_column :movies_stores, :quantity, :integer
  end
end
