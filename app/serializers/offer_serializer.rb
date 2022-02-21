class OfferSerializer < ActiveModel::Serializer
  attributes :id, :candidate_id, :opportunity_id
end
