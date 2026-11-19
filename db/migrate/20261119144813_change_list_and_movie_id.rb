class ChangeListAndMovieId < ActiveRecord::Migration[8.1]
  def change
    add_index :bookmarks, :list_id
    add_index :bookmarks, :movie_id
    add_foreign_key :bookmarks, :lists
    add_foreign_key :bookmarks, :movies
  end
end
