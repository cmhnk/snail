class SessionController < ApplicationController

  def reset
    reset_session
    redirect_to "/login"
  end
end
