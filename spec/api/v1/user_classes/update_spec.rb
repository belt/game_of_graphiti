require 'rails_helper'

RSpec.describe "user_classes#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/user_classes/#{user_class.id}", payload
  end

  describe 'basic update' do
    let!(:user_class) { create(:user_class) }

    let(:payload) do
      {
        data: {
          id: user_class.id.to_s,
          type: 'user_classes',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(UserClassResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { user_class.reload.attributes }
    end
  end
end
