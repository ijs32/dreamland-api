class Recruiter < ApplicationRecord
  belongs_to :user
  has_many :opportunities

  def select_candidate(candidate_id)
    candidate = Candidate.find_by(id: candidate_id)
    return candidate
  end
end
