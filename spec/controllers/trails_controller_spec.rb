require 'rails_helper'

RSpec.describe TrailsController, type: :controller do
  describe 'trails#index' do
    it 'should show the page' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'trails#show' do
    it 'should show the trail page' do
      trail = Trail.create(
        name: 'fake trail',
        length: 2.3,
        elevation_gain: 1000,
        highest_elevation: 1200
        )
      get :show, params: {id: trail.id }
      expect(response).to have_http_status(:success)
    end

    it 'should return a 404 error if the trail is not found' do
      get :show, params: {id: 'tacocat' }
      expect(response).to have_http_status(:not_found)
    end
  end
end
