class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]
  def index
    @users = User.all
    render json: @users
  end

  # GET /api/v1/parties/:id
  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  # POST /api/v1/parties
  def create
    # @user = User.create({ name: params[:name],theme: params[:theme] })
    # @user = User.create(params.require(:user).permit(:name, :theme))
    @user = User.create(user_params)
    if @user.valid?
      render json: @user, status: :created
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.permit(:name)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
