class ChangeMatchColumnName < ActiveRecord::Migration[6.1]
  def self.up
    rename_column :matches, :match_id, :liker_id
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
