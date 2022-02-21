class OpportunitiesSerializer < ActiveModel::Serializer
  belongs_to :recruiter
  has_many :offers
  has_many :candidates, through: :offers
  
  attributes :id
end
