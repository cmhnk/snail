class SessionController < ApplicationController

  def reset
    reset_session
    redirect_to :new_user_session
  end
end
