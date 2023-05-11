class PostsController < ApplicationController
  def create
    post = Post.create(
      body: params[:body],
      user_id: params[:user_id],
    )
    render json: post.as_json
  end
end
