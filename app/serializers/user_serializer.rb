class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :email, :date_birth
end
