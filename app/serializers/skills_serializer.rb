class SkillsSerializer < ActiveModel::Serializer
  belongs_to :candidate
  attributes :id
end
