class ChangeCriticsRefToMovies < ActiveRecord::Migration[5.2]
  def change
    remove_reference :movies, :director, foreign_key: true
  end
end
