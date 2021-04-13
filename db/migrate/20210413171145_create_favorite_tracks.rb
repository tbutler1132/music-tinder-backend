class CreateFavoriteTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_tracks do |t|
      t.string :name
      t.string :artist
      t.string :image
      t.string :spotify_id
      t.string :preview

      t.timestamps
    end
  end
end
