class ChangeMoviesGenresTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :movies_genres, :genres_movies
  end
end
