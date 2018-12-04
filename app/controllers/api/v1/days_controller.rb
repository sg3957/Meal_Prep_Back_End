class Api::V1::DaysController < ApplicationController
  before_action :find_day, only: [:update]
  def index
    @days = Day.all
    render json: @days
  end

  # GET /api/v1/parties/:id
  def show
    @day = Day.find(params[:id])
    render json: @day, status: :ok
  end

  # POST /api/v1/parties
  def create
    # @day = Day.create({ name: params[:name],theme: params[:theme] })
    # @day = Day.create(params.require(:day).permit(:name, :theme))
    @day = Day.create(day_params)
    if @day.valid?
      render json: @day, status: :created
    else
      render json: @day.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @day.update(day_params)
    if @day.save
      render json: @day, status: :accepted
    else
      render json: { errors: @day.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def day_params
    params.permit(:name, :user_id)
  end

  def find_day
    @day = Day.find(params[:id])
  end
end
