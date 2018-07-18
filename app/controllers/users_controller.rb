class UsersController < ApplicationController
  before_action :authenticate!

  def hello
    render json: 'hi'
  end

  def show
    @users = User.all.limit(10)
    render json: { message: 'Successfully retrieved users.', payload: @users }
  end

  def create
    user = User.create(user_params)
    render json: { message: 'New User Created!', payload: user }
  end

  private

  # redirect user to /login if hasn't picked a username yet
  def authenticate!
    redirect_to login_path unless session[:username]
  end

  def user_params
    Rails.logger.info "params: #{params}" 
    params.require(:user).permit(:first_name, :last_name, :birthdate, :address, :email)
  end
end