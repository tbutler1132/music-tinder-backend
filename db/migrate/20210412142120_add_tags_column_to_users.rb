class AddTagsColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :tags, :text, array: true, default: []
  end
end
