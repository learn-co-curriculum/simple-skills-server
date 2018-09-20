require 'rails_helper'

RSpec.describe FirstController, type: :controller do
  render_views

  describe "GET #echo" do
    context "with no name parameters" do
      it "renders the full correct parital" do
        get :echo
        expect(response).to render_template(:_data_missing)
      end
    end

    context 'with a full_name parameter' do
      it "renders the full correct parital" do
        get :echo, params: { full_name: "Byron the Poodle" }
        expect(response).to render_template(:_full)
      end
    end

    context 'with a first_name and family_name parameter' do
      it "renders the full correct parital" do
        get :echo, params: { first_name: "Byron", family_name: "the Poodle" }
        expect(response).to render_template(:_assemble)
      end
    end
  end

end
