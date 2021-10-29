class CreateMoviesGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :movies_genres, id: false do |t|
      t.belongs_to :movie, foreign_key: true
      t.belongs_to :genre, foreign_key: true
    end
  end
end
