class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :login]

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.save
    payload = {user_id: @user.id}
    token = encode(payload)
    render json: {
      message: "Authenticated! You are logged in",
      authenticated: true,
      user: @user.login,
      token: token
    }, status: :accepted
    end
  end

  def profile
    byebug
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    if @user
      render json: @user.login
    end
  end

  private

  def user_params
    params.permit(:username, :first_name, :last_name, :password)
  end

  def get_user
    @user = Users.find(params[:id])
  end

end
