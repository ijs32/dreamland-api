class SkillSerializer < ActiveModel::Serializer
  belongs_to :candidate
  attributes :id, :skill_title, :skill_level
end
