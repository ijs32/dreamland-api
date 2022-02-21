class UsersSerializer < ActiveModel::Serializer
  has_many :recruiters
  has_many :candidates
  attributes :id
end
