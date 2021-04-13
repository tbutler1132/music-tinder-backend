class AddFavoriteSongIdColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :favorite_song_id, :string
  end
end
