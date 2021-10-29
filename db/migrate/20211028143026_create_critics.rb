class CreateCritics < ActiveRecord::Migration[5.2]
  def change
    create_table :critics do |t|
      t.string :author
      t.integer :score
      t.text :avaliation
      t.belongs_to :movies

      t.timestamps
    end
  end
end
