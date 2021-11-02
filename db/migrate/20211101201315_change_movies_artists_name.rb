class ChangeMoviesArtistsName < ActiveRecord::Migration[5.2]
  def change
    rename_table :movies_artists, :artist_movies
  end
end
