require 'rails_helper'

RSpec.describe LandingController, type: :controller do
  it 'shows index page' do
    get :index
    assert_template 'landing/index'
  end

end
