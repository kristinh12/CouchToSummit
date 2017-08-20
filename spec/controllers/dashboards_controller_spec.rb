require 'rails_helper'

RSpec.describe DashboardsController, type: :controller do
  describe 'dashboards#show' do
    it 'should display the user goal dashboard' do
      user = User.create(
        email:                'fakeuser@gmail.com',
        password:             'secretPassword',
        password_confirmation:'secretPassword'
        )
      sign_in user
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
