require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  it "logins when credentials are correct" do
    user = FactoryGirl.create(:user)
    post :create,
      :params => {
        :user => FactoryGirl.attributes_for(:user)
      }
    expect(session[:user_id]).to eq(user.id)
    assert_redirected_to '/'
  end

  it " does not login when credentials are incorrect" do
    user = FactoryGirl.create(:user)
    post :create,
      :params => {
        :user => {
          :email => user.email,
          :password => '567'
        }
      }
    expect(session[:user_id]).to be_nil
    assert_template 'sessions/new'
  end
end
