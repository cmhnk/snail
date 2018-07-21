class UsersController < Devise::SessionsController
  before_action :authenticate_member!
end