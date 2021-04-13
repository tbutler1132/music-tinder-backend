class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :artist_name, :role, :genre, :location, :tags, :email, :bio, :avatar, :matches, :likers, :liked

  has_many :demos
  # has_many :likers
  # has_many :liked

  has_one :favorite_track

  has_many :initiated_conversations
  has_many :received_conversations


  def matches
    object.match.collect do |match|
      { :id => match.id, :name => match.name, :artist_name => match.artist_name, :role => match.role, :genre => match.genre, :bio => match.bio, :location => match.location , :email => match.email, :tags => match.tags, avatar: rails_blob_url(match.avatar, only_path: true)}
    end
  end
  
  def likers
    object.likers.collect do |liker|
      { :id => liker.id, :name => liker.name, :artist_name => liker.artist_name, :role => liker.role, :genre => liker.genre, :bio => liker.bio, :location => liker.location , :email => liker.email, :tags => liker.tags, avatar: rails_blob_url(liker.avatar, only_path: true)}
    end
  end
  
  def liked
    object.liked.collect do |like|
      { :id => like.id, :name => like.name, :artist_name => like.artist_name, :role => like.role, :genre => like.genre, :bio => like.bio, :location => like.location , :email => like.email, :tags => like.tags, avatar: rails_blob_url(like.avatar, only_path: true)}
    end
  end

  def avatar
    if object.avatar.attached?
      {
        url: rails_blob_url(object.avatar, only_path: true)
      }
    end
  end
  
  # has_many :first
  # has_many :second
end
