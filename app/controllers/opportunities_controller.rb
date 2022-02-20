class OpportunitiesController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_recruiter, except: [:index, :show]

  def index
    render json: Opportunity.all
  end

  def show
    render json: Opportunity.where(id: params[:id])
  end

  def create
    recruiter = Recruiter.find_by(user_id: current_user.id)
    opportunity = Opportunity.new(
      recruiter_id: recruiter.id,
      job_title: params[:job_title],
      job_description: params[:job_description]
    )
    if opportunity.save
      render json: { message: "opportunity created successfully"}, status: :created
    else
      render json: { message: opportunity.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    opportunity = Opportunity.find_by(id: params[:id])
    opportunity.recruiter_id = params[:recruiter_id] || opportunity.recruiter_id
    opportunity.job_title = params[:job_title] || opportunity.job_title
    opportunity.job_description = params[:job_description] || opportunity.job_description
    if opportunity.save
      render json: opportunity
    else
      render json: { errors: opportunity.errors.full_messages }, status: :unproccessable_entity
    end
  end

  def destroy
    opportunity = Opportunity.find_by(id: params[:id])
    if opportunity.recruiter_id == current_user.id
      opportunity.destroy
      render json: { message: "Opportunity destroyed successfully"}
    else
      render json: { errors: opportunity.errors.full_messages }, status: 422
    end
  end
end
