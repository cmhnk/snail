class AddressBooksController < ApplicationController

  def index
    @address_books = AddressBook.all
    render json: @address_books
  end

  def view
    @address_book = AddressBook.find(params[:id])
    render json: @address_book
  end
end