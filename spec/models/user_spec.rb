require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"


  before do
    @new_user = User.create!(email: 'user@user.com', password: 'password2018')
    @newer_user = User.create!(email: 'new@user.com', password: 'password2020')
  end

  it 'New user should have set email on registration' do
    expect(@new_user.email).to eq 'user@user.com'
  end

   it 'New user should have set password on registration' do
    expect(@new_user.password).to eq 'password2018'
  end

    it 'should generate an encrypted password on registration' do
      expect(@new_user.encrypted_password.length).to eq 60
    end
end
