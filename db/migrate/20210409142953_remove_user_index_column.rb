class RemoveUserIndexColumn < ActiveRecord::Migration[6.1]
  def change
    remove_index :user_id, name: "index_matches_on_user_id"
  end
end
