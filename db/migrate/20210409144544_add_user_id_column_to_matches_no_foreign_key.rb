class AddUserIdColumnToMatchesNoForeignKey < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :user_id, :integer
  end
end
