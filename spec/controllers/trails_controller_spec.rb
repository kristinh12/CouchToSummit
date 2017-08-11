require 'rails_helper'

RSpec.describe TrailsController, type: :controller do
  describe 'trails#index' do
    it 'should show the page' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
