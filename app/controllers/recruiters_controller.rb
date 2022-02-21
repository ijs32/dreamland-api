class RecruitersController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_recruiter, except: [:index]
  
  def index
    recruiter = Recruiter.all
    render json: recruiter
  end

  def show
    recruiter = Recruiter.find_by(user_id: current_user.id)
    render json: recruiter
  end

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
    opportunities = recruiter.opportunities
    for opp in opportunities do
      offers = Offer.where(opportunity_id: opp.id)
      if offers
        offers.each{|offer| offer.destroy}
      end
    end
    if opportunities
      opportunities.each{|opp| opp.destroy}
    end
    recruiter.destroy
    render json: {message: "Recruiter and associated opportunities removed from app."}
  end
end
