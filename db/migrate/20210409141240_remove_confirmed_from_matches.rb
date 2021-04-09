class RemoveConfirmedFromMatches < ActiveRecord::Migration[6.1]
  def change
    remove_column :matches, :confirmed, :boolean
  end
end
