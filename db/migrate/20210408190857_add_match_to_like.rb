class AddMatchToLike < ActiveRecord::Migration[6.1]
  def change
    add_column :likes, :match, :boolean
  end
end
