class RecruiterSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :opportunities

  attributes :id, :user, :opportunities, :company_name, :get_matched_opportunities
end
