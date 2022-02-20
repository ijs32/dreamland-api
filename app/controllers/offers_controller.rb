class OffersController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_recruiter
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
