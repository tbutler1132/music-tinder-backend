class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :image, :spotify_id, :preview
end
