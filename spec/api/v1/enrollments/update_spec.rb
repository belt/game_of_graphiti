require 'rails_helper'

RSpec.describe "enrollments#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/enrollments/#{enrollment.id}", payload
  end

  describe 'basic update' do
    let!(:enrollment) { create(:enrollment) }

    let(:payload) do
      {
        data: {
          id: enrollment.id.to_s,
          type: 'enrollments',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(EnrollmentResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { enrollment.reload.attributes }
    end
  end
end
