class AddressBooksController < ApplicationController
  before_action :authenticate_user!

  def index
    @address_books = AddressBook.belonging_to_user(current_user)
  end

  def new
    @address_book = AddressBook.new
  end

  def create
    @address_book = AddressBook.create(user_id: current_user.id, category: create_params[:category])
    redirect_to :address_books
  end

  def view
    @address_book = AddressBook.find(params[:id])
    render json: @address_book
  end

  def create_params
    params[:address_book]
  end
end