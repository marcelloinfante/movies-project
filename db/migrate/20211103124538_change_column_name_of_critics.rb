class ChangeColumnNameOfCritics < ActiveRecord::Migration[5.2]
  def change
    rename_column :critics, :movies_id, :movie_id
  end
end
