class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist_name, :role, :genre, :location, :tags, :email, :bio

  # def matches
  #   return object.liked_users.concat(object.liking_users)
  # end

  has_many :demos
  has_many :liked
  has_many :likers
  
end
