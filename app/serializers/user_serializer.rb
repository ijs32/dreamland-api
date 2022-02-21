class UserSerializer < ActiveModel::Serializer
  has_many :recruiters
  has_many :candidates
  attributes :id, :name, :email
end
