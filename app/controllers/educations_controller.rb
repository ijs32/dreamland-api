class EducationsController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_candidate
  
  def index
    candidate = Candidate.find_by(user_id: current_user.id)
    render json: candidate.educations
  end

  def create 
    candidate = Candidate.find_by(user_id: current_user.id)
    education = Education.create(candidate_id: candidate.id, school: params[:school], degree: params[:degree], field: params[:field], start_year: params[:start_year], end_year: params[:end_year])
    if education.save
      render json: education
    else
      render json: {errors: education.errors.full_messages}, status: :unauthorized
    end
  end

  def destroy
    education = Education.find_by(id: params[:id])
    education.destroy
    render json: {message: "Education removed from profile."}
  end
end
