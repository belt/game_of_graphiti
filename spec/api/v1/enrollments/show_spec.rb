require "rails_helper"

RSpec.describe "enrollments#show", type: :request do
  subject(:make_request) do
    jsonapi_get "/api/v1/enrollments/#{enrollment.id}", params: params
  end

  let(:params) { {} }

  describe "basic fetch" do
    let!(:enrollment) { create(:enrollment) }

    it "works" do
      expect(EnrollmentResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq("enrollments")
      expect(d.id).to eq(enrollment.id)
    end
  end
end
