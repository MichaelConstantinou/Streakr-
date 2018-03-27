class StreaksController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.streaks.length>0
      render 'streaks/index'
    else
      render 'streaks/welcome'
    end
  end


end
