class AddConfirmedColumnToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :confirmed, :boolean, default: :false
  end
end
