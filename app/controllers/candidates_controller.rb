class CandidatesController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_candidate, except: [:index, :show]

  def index
    candidates = Candidate.all
    render json: candidates
  end

  def show
    candidate = Candidate.find_by(id: params[:id])
    render json: candidate
  end

  def create
    candidate = Candidate.new(
      user_id: current_user.id
    )
    if candidate.save
      render json: { message: "Candidate created successfully" }, status: :created
    else
      render json: { errors: candidate.errors.full_messages }, status: :unauthorized
    end
  end

  def update
    candidate = candidate.find_by(user_id: current_user.id)
    # currently candidates have no attributes they should be able to modify
  end

  def destroy
    candidate = Candidate.find_by(user_id: current_user.id)
    offers = candidate.offers
    if offers
      offers.each{|offer| offer.destroy}
    end
    candidate.delete
    render json: { message: "Candidate destroyed" }
  end
end
