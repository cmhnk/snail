class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def hello
    render json: 'hi'
  end

  def index
    @users = User.all
    render json: { message: 'Successfully retrieved users.', payload: @users }
  end

  def create
    user = User.create(user_params)
    render json: { message: 'New User Created!', payload: user }
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthdate, :address, :email)
  end
end