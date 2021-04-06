class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :artist_name
      t.string :role
      t.string :genre
      t.string :bio
      t.string :location
      t.string :tags

      t.timestamps
    end
  end
end
