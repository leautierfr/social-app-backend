class FollowsController < ApplicationController
  def index
    follows = Follow.all
    render json: follows.as_json
  end

  def create
    follow = Follow.create(
      followed_id: params[:followed_id],
      user_id: params[:user_id]
    )
    render json: follow.as_json
  end
end
