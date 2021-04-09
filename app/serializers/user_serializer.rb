class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist_name, :role, :genre, :location, :tags, :email, :bio, :matches

  has_many :demos
  has_many :likers
  has_many :liked
  
  has_many :first
  has_many :second
end
