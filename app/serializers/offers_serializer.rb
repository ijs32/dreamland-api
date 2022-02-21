class OffersSerializer < ActiveModel::Serializer
  belongs_to :candidate
  belongs_to :opportunity
  attributes :id
end
