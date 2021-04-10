class MatchSerializer < ActiveModel::Serializer
  attributes :id, :status
  has_one :sent_to
  has_one :sent_by
end
