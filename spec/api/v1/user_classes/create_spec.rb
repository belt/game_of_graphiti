require "rails_helper"

RSpec.describe "user_classes#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/user_classes", payload
  end

  describe "basic create" do
    let(:user) do
      FactoryBot.create(:user)
    end

    let(:params) do
      attributes_for(:user_class)
    end
    let(:payload) do
      {
        data: {
          type: "user_classes",
          attributes: params
        }
      }
    end

    it "works" do
      expect(UserClassResource).to receive(:build).and_call_original
      expect do
        make_request
        expect(response.status).to eq(201), response.body
      end.to change(UserClass, :count).by(1)
    end
  end
end
