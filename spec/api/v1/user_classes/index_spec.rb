require 'rails_helper'

RSpec.describe "user_classes#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/user_classes", params: params
  end

  describe 'basic fetch' do
    let!(:user_class1) { create(:user_class) }
    let!(:user_class2) { create(:user_class) }

    it 'works' do
      expect(UserClassResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(['user_classes'])
      expect(d.map(&:id)).to match_array([user_class1.id, user_class2.id])
    end
  end
end
