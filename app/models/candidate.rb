class Candidate < ApplicationRecord
  belongs_to :user
  has_many :offers
  has_many :opportunities, through: :offers
end
