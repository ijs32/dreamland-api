class Opportunity < ApplicationRecord
  belongs_to :recruiter
  has_many :opportunity_candidates
  has_many :candidates, through: :opportunity_candidates
end
