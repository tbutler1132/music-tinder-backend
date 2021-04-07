class MatchSerializer < ActiveModel::Serializer
  attributes :id, :first_id, :second_id

  belongs_to :first
  belongs_to :second
end
