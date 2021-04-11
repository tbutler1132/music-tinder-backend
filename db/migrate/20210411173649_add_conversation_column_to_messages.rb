class AddConversationColumnToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :conversation_id, :integer
  end
end
