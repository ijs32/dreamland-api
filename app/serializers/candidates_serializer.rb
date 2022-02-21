class CandidatesSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :offers
  has_many :opportunities, through: :offers
  has_many :educations
  has_many :skills
  attributes :id
end
