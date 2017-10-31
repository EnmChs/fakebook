class ArrowSerializer < ActiveModel::Serializer
  attributes :id, :content, :read
  # has_one :user
end
