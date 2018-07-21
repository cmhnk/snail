class AddressBooksController < ApplicationController
  before_action :authenticate_user!

  def index
    @address_books = AddressBook.belonging_to_user(current_user)
    render json: {message: 'Get Started!'} if @address_books.empty?
    # render json: @address_books
  end

  def create
    @address_book = AddressBook.create(owner: params[:owner], category: params[:category])
    render json: {message: 'Success', payload: @address_book}
  end

  def view
    @address_book = AddressBook.find(params[:id])
    render json: @address_book
  end
end