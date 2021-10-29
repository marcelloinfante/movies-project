class ChangeGenresAttrFromClassificationToName < ActiveRecord::Migration[5.2]
  def change
    change_column :genres, :classification, :name
  end
end
