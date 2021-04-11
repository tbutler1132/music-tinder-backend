class LikeSerializer < ActiveModel::Serializer
  attributes :id, :liker, :liked

  belongs_to :liker
  belongs_to :liked
end
