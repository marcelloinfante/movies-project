class CreateMoviesArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :movies_artists, id: false do |t|
      t.belongs_to :movie, foreign_key: true
      t.belongs_to :artist, foreign_key: true
    end
  end
end
