class ChangeMoviesArtistName < ActiveRecord::Migration[5.2]
  def change
    rename_table :artist_movies, :artists_movies
  end
end
