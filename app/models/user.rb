class User < ApplicationRecord
  has_many :recruiters
  has_many :candidates
end
