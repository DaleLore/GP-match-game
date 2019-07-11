class UsersController < ApplicationController

  def index
    users = User.all
    render json: users, include: [:games]
  end

  def show
    user = User.find(params[:id])
    render json: user, include: [:games]
  end

  def create
    user = User.find_or_create_by(user_params)
    render json: user, include: [:games]
  end

  def destroy
    user = User.find(params[:id])
    
    user.destroy
    render json: user
  end

  def user_params
    params.require(:user).permit(:id, :username)
  end

end
