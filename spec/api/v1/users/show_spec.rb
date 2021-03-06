require "rails_helper"

RSpec.describe "users#show", type: :request do
  subject(:make_request) do
    jsonapi_get "/api/v1/users/#{user.id}", params: params
  end

  let(:params) { {} }

  describe "basic fetch" do
    let!(:user) { create(:user) }

    it "works" do
      expect(UserResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq("users")
      expect(d.id).to eq(user.id)
    end
  end
end
