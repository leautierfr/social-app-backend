class UsersController < ApplicationController
  def create
    user = User.create(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    users = User.all
    render json: users.as_json
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user.as_json
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(username: params[:username] || user.username,
                email: params[:email] || user.email,
                password: params[:password] || user.password,
                password_confirmation: params[:password_confirmation] || user.password_confirmation)

    render json: user.as_json
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: { message: "user removed" }
  end
end
