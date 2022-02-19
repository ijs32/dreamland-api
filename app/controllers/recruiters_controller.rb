class RecruitersController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_recruiter
  def create
    recruiter = Recruiter.new(user_id: current_user.id, company_name: params[:company_name])

    if recruiter.save
      render json: recruiter
    else
      render json: {errors: recruiter.errors.full_messages}, status: :unauthorized
    end
  end

  def destroy
    recruiter = Recruiter.find_by(user_id: current_user.id)
    opportunities = Opportunity.where(recruiter_id: recruiter.id)
    opportunities.map{|opp| opportunity_candidate = OpporunityCandidate.find_by(opportunity_id = opp.id)  
      opportunity_candidate.destroy
    }
    opportunities.destroy
    recruiter.destroy
    render json: {message: "Recruiter and associated opportunities removed from app."}
  end
end
