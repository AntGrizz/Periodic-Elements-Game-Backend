class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :login]

  def show
    render json: @user
  end

  def create
    user = User.create(user_params)
    render json: {
      user: user,
      scores: []
    }
  end

  private

  def user_params
    params.permit(:username, :first_name, :last_name, :password)
  end

  def get_user
    @user = Users.find(params[:id])
  end

end
