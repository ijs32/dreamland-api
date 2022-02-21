class EducationsSerializer < ActiveModel::Serializer
  belongs_to :candidate
  attributes :id
end
