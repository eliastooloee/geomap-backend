class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest
  has many :maps
end
