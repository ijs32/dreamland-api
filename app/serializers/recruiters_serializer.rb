class RecruitersSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :opportunities
  attributes :id
end
