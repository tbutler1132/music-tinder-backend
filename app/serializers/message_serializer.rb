class MessageSerializer < ActiveModel::Serializer
  attributes :id, :read, :body, :conversation_id, :user_id
end
