class Api::V1::MealtimesController < ApplicationController
  before_action :find_mealtime, only: [:update]
  def index
    @day = Day.find(params[:day_id])
    @mealtimes = @day.mealtimes
    render json: @mealtimes
  end

  # GET /api/v1/parties/:id
  def show
    @mealtime = Mealtime.find(params[:id])
    render json: @mealtime, status: :ok
  end

  # POST /api/v1/parties
  def create
    # @mealtime = Mealtime.create({ name: params[:name],theme: params[:theme] })
    # @mealtime = Mealtime.create(params.require(:mealtime).permit(:name, :theme))
    @mealtime = Mealtime.create(mealtime_params)
    if @mealtime.valid?
      render json: @mealtime, status: :created
    else
      render json: @mealtime.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @mealtime.update(mealtime_params)
    if @mealtime.save
      render json: @mealtime, status: :accepted
    else
      render json: { errors: @mealtime.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def mealtime_params
    params.permit(:name, :day_id)
  end

  def find_mealtime
    @mealtime = Mealtime.find(params[:id])
  end
end
