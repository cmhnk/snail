class AuthController < ApplicationController
  before_action :only_for_anonymous

  def new
  end

  # Get username, save to session, redirect to root (users_page)
  def create
    session[:username] = params[:username]
    redirect_to root_path
  end

  private

  # If a user has been here before, send them straight to the users page
  def only_for_anonymous
    redirect_to root_path if session[:username]
  end
end