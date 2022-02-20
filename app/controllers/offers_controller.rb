class OffersController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_recruiter, except: [:index]
  
  def index
    recruiter = Recruiter.find_by(user_id: current_user.id)
    candidate = Candidate.find_by(user_id: current_user.id)
    if recruiter
      opportunities = recruiter.opportunities
      offers = opportunities.each{|opp| Offer.where(opportunity_id: opp.id)}
      render json: opportunities
    end
    if candidate
      offers = Offer.where(candidate_id: candidate.id)
      render json: offers
    end
  end
  
  def create
    offer = Offer.find_by(opportunity_id: params[:opportunity_id], candidate_id: params[:candidate_id])
    if !offer 
      new_offer = Offer.new(opportunity_id: params[:opportunity_id], candidate_id: params[:candidate_id])
      offer = new_offer
    end
    if offer.save
      render json: offer
    else
      render json: {errors: offer.errors.full_messages}, status: :unauthorized
    end
  end

  def destroy
    offer = Offer.find_by(id: params[:id])
    offer.destroy
    render json: {message: "Offer removed from app."}
  end
end
