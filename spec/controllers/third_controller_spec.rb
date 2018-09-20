require 'rails_helper'

RSpec.describe ThirdController, type: :controller do
  describe "GET #awful_login" do
    render_views
    it "returns http success" do
      get :endpoint
      expect(response).to have_http_status(:success)
    end

    it "returns http success" do
      get :endpoint
      expect(response).to render_template(:endpoint)
    end

    it "returns http success" do
      get :endpoint, params: { poodle: "Byron"}
      expect(response.body).to match(/Byron/)
    end
  end
end
