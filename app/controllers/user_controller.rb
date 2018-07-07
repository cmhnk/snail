class UserController < ApplicationController
  def hello
    render json: 'hi'
  end
end