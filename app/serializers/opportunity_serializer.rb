class OpportunitySerializer < ActiveModel::Serializer
  belongs_to :recruiter
  has_many :offers
  has_many :candidates, through: :offers
  
  attributes :id, :job_title, :job_description
end
