class RemoveTagsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :tags, :string
  end
end
