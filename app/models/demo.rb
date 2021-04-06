class Demo < ApplicationRecord
    belongs_to :user

    has_one_attached :audio_data
end
