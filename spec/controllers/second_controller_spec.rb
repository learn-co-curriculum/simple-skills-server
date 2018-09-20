require 'rails_helper'

RSpec.describe SecondController, type: :controller do
  render_views

  describe "GET #awful_login" do
    it "returns http success" do
      get :awful_login
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:awful_login)
    end
  end

  # should not work
  describe "POST #awful_login" do
    it "returns http success" do
      post :awful_login
      expect(response).to have_http_status(:not_found)
    end
  end

  # should warn
  describe "GET #better_login" do
    it "returns http success" do
      get :better_login
      expect(response).to render_template(:warning)
    end
  end

  describe "POST #better_login" do
    it "returns http success" do
      post :better_login
      expect(response).to render_template(:better_login)
    end
  end
end
