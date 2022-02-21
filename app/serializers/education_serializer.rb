class EducationSerializer < ActiveModel::Serializer
  belongs_to :candidate
  attributes :id, :school, :degree, :field, :start_year, :end_year
end
