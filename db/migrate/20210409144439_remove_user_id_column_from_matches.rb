class RemoveUserIdColumnFromMatches < ActiveRecord::Migration[6.1]
  def change
    remove_column :matches, :user_id, :integer
  end
end
