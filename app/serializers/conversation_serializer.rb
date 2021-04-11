class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :sender, :reciever, :messages

  has_many :messages
  belongs_to :sender
  belongs_to :reciever

end
