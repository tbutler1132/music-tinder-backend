class AddRecieverColumnToConversation < ActiveRecord::Migration[6.1]
  def change
    add_column :conversations, :reciever_id, :integer
  end
end
