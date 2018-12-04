class Api::V1::FoodsController < ApplicationController
  before_action :find_food, only: [:update]
  def index
    @foods = Food.all
    render json: @foods
  end

  # GET /api/v1/parties/:id
  def show
    @food = Food.find(params[:id])
    render json: @food, status: :ok
  end

  # POST /api/v1/parties
  def create
    # @food = Food.create({ name: params[:name],theme: params[:theme] })
    # @food = Food.create(params.require(:food).permit(:name, :theme))
    @food = Food.create(food_params)
    if @food.valid?
      render json: @food, status: :created
    else
      render json: @food.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @food.update(food_params)
    if @food.save
      render json: @food, status: :accepted
    else
      render json: { errors: @food.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def food_params
    params.permit(:name, :day_id)
  end

  def find_food
    @food = Food.find(params[:id])
  end
end
