class Match < ApplicationRecord
  # belongs_to :sent_to, class_name: ‘User’, foreign_key: ‘sent_to_id’
  # belongs_to :sent_by, class_name: ‘User’, foreign_key: ‘sent_by_id’

  # scope :matches, -> { where(‘status =?’, true) }
  # scope :not_matches, -> { where(‘status =?’, false) }
end
