class RemoveUserIdFromMatches < ActiveRecord::Migration[6.1]
  def change
    remove_column :matches, :first_id, :integer
    remove_column :matches, :second_id, :integer
  end
end
