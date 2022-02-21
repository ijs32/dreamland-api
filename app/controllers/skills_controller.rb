class SkillsController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_candidate
  
  def index
    candidate = Candidate.find_by(user_id: current_user.id)
    render json: candidate.skills
  end

  def create 
    candidate = Candidate.find_by(user_id: current_user.id)
    skill = Skill.create(candidate_id: candidate.id, skill_title: params[:skill_title], skill_level: params[:skill_level])
    if skill.save
      render json: skill
    else
      render json: {errors: skill.errors.full_messages}, status: :unauthorized
    end
  end

  def destroy
    skill = Skill.find_by(id: params[:id])
    skill.destroy
    render json: {message: "Skill removed from profile."}
  end
end
