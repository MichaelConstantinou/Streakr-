require 'rails_helper'

RSpec.describe StreaksController, type: :controller do

  before do
    @new_user = User.create!(email: 'newuser@user.com', password: 'password2018')
    sign_in(@new_user)
    @new_user.streaks.create!(aim:'stop smoking', title: 'smoking', frequency: 0)
  end

  describe '#index' do

    it 'should route new user to welcome page on registration' do
      get :index
      expect(response).to render_template('streaks/welcome')
    end

    it 'should route user with streak(s) to homepage on login' do
      @new_user.streaks.create!(aim:'stop smoking', title: 'smoking')
      get :index
      expect(response).to render_template('streaks/index')
    end

  end

  describe '#create' do

    it 'should create a new streak' do
      post :create, params: {streak: {aim: 'lose 1lb', title: 'lose weight'}}
      expect(@new_user.streaks.last.aim).to eq 'lose 1lb'
    end
  end


  # describe '#update' do
  #   it 'should allow a user to update a streak for the first time' do
  #     @new_user = User.create!(email: 'neweruser@user.com', password: 'password2018')
  #     sign_in(@new_user)
  #     @new_user.streaks.create!(id: 2, aim:'stop smoking', title: 'smoking', frequency: 0)
  #     binding.pry
  #     patch :update, params: {streak: {frequency: streak.frequency + 1, achieved: Date.today}}
  #     expect(@new_user.streaks.first.frequency).to eq 1
  #   end
  # end

end