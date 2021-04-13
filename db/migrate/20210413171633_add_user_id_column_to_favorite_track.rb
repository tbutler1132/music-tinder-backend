class AddUserIdColumnToFavoriteTrack < ActiveRecord::Migration[6.1]
  def change
    add_column :favorite_tracks, :user_id, :integer
  end
end
