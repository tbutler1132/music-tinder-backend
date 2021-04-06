class AddUserIdColumnToDemos < ActiveRecord::Migration[6.1]
  def change
    add_column :demos, :user_id, :integer
  end
end
