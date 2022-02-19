class Candidate < ApplicationRecord
  belongs_to :user
  has_many :opportunity_candidates
  has_many :opportunities, through: :opportunity_candidates
end
