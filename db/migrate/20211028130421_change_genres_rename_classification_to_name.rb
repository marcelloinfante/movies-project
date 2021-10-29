class ChangeGenresRenameClassificationToName < ActiveRecord::Migration[5.2]
  def change
    change_table :genres do |t|
      t.rename :classification, :name
    end
  end
end
