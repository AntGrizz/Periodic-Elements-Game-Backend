class ScoresController < ApplicationController

  def index
    scores = Score.all
    render json: scores
  end

  def create
    @score = Score.create!(score_params)
    if @score.save
      token = request.headers["Authentication"].split(' ')[1]
      payload = decode(token)
      @user = User.find(payload["user_id"])
    render json: {
      score: @score.newScore
    }
  end
  end

  private

  def score_params
    params.permit(:user_id, :mode, :correct, :total)
  end

end
