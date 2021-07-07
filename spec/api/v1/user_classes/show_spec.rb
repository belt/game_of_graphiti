require 'rails_helper'

RSpec.describe "user_classes#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/user_classes/#{user_class.id}", params: params
  end

  describe 'basic fetch' do
    let!(:user_class) { create(:user_class) }

    it 'works' do
      expect(UserClassResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq('user_classes')
      expect(d.id).to eq(user_class.id)
    end
  end
end
