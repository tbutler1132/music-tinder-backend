class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist_name, :role, :genre, :location, :tags, :email, :bio, :matches

  has_many :demos
  has_many :likers
  has_many :liked

  # def matches
  #   object.likers.concat(object.liked) {|liker| liker = liker.id}
  # end
  
  # has_many :first
  # has_many :second
end
