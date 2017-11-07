class ArrowSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at
  # has_one :user
  has_many :comments
end
