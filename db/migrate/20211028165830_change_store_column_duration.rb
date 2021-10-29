class ChangeStoreColumnDuration < ActiveRecord::Migration[5.2]
  def change
    remove_column :stores, :duration, :integer
    add_column :stores, :location, :string
  end
end
