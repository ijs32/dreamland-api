class Opportunity < ApplicationRecord
  belongs_to :recruiter
  has_many :offers
  has_many :candidates, through: :offers
end
