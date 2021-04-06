class DemoSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :audio_data

  def audio_data
    if object.audio_data.attached?
      {
        url: rails_blob_url(object.audio_data, only_path: true)
      }
    end
  end

  belongs_to :user
end
