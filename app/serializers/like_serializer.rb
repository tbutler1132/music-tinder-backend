class LikeSerializer < ActiveModel::Serializer
  attributes :id, :match

  belongs_to :liker
  belongs_to :liked
end
