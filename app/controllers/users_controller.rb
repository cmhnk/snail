class UsersController < ApplicationController
  before_action :authenticate!

  def hello
    render json: 'hi'
  end

  def index
    @users = User.all
  end

  def find_by_address_book
    address_book = AddressBook.where(category: params[:category]).first
    @users = User.where(address_book: address_book)
    # serializer here
    
    render :index
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