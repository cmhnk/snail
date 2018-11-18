class ContactsController < ApplicationController
  # before_action :authenticate!

  def hello
    render json: 'hi'
  end

  def index
    @contacts = Contact.all
  end

  def find_by_address_book
    address_book = AddressBook.where(category: params[:category]).first
    @contacts = Contact.where(address_book: address_book)
    render :index
  end

  def create
    contact = Contact.create(contact_params)
    render json: { message: 'New contact Created!', payload: contact }
  end

  private

  # redirect contact to /login if hasn't picked a contactname yet
  # def authenticate!
  #   redirect_to login_path unless session[:username]
  # end

  def contact_params
    Rails.logger.info "params: #{params}" 
    params.require(:contact).permit(:first_name, :last_name, :birthdate, :address, :email)
  end
end