class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.float :profit
      t.integer :duration
      
      t.timestamps
    end
  end
end
