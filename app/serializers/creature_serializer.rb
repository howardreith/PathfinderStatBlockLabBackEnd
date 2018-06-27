class CreatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :cr
  has_one :user
end
