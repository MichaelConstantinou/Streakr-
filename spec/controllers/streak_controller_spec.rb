require 'rails_helper'

RSpec.describe StreaksController, type: :controller do

  before do
    @new_user = User.create!(email: 'user@user.com', password: 'password2018')
    sign_in(@new_user)
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
      expect(@new_user.streaks.first.aim).to eq 'lose 1lb'
    end
  end
end