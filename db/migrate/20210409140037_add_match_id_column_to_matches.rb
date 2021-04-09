class AddMatchIdColumnToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :match_id, :integer
  end
end
