require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  it 'doesn"t create product if guest' do
    post :create
    assert_redirected_to '/'
  end

  it 'creates product if admin' do
    admin = FactoryGirl.create(:admin)

    expect {
      post :create,
        :params => {
          :product => FactoryGirl.attributes_for(:product)
        },
        :session => {
          :user_id => admin.id
        }
    }.to change { Product.count }
  end
end
