class Recruiter < ApplicationRecord
  belongs_to :user
  has_many :opportunities

  def select_candidate(candidate_id)
    candidate = Candidate.find_by(id: candidate_id)
    return candidate
  end

  def get_matched_opportunities
    matched_opportunities = opportunities.map{|opp| Offer.find_by(opportunity_id: opp.id)}
    return matched_opportunities
  end
end
