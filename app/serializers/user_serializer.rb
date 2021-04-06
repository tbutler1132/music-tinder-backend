class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist_name, :role, :genre, :location, :tags, :email, :bio

  has_many :demos
end
