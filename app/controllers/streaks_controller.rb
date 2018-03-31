class StreaksController < ApplicationController
  before_action :authenticate_user!

  def index
    @new_streak = Streak.new
    if current_user.streaks.length > 0
      render 'streaks/index'
    else
      render 'streaks/welcome'
    end
  end

  def create
    @new_streak = Streak.new(frequency: 0, user_id: current_user.id, aim: params[:streak][:aim], title: params[:streak][:title])
    if @new_streak.save
      redirect_to '/'
    else
      render 'streaks/index'
    end
  end

  def update
    streak = Streak.find(params[:streak][:id])
    streak.update_attributes(frequency: params[:streak][:frequency], id: params[:streak][:id], achieved: params[:streak][:achieved])
    redirect_to '/'
  end

end
