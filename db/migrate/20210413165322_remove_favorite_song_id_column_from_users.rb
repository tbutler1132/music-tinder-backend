class RemoveFavoriteSongIdColumnFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :favorite_song_id, :string
  end
end
