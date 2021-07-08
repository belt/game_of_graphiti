require "rails_helper"

RSpec.describe "enrollments#index", type: :request do
  subject(:make_request) do
    jsonapi_get "/api/v1/enrollments", params: params
  end

  let(:params) { {} }

  describe "basic fetch" do
    let!(:enrollment1) { create(:enrollment) }
    let!(:enrollment2) { create(:enrollment) }

    it "works" do
      expect(EnrollmentResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(["enrollments"])
      expect(d.map(&:id)).to match_array([enrollment1.id, enrollment2.id])
    end
  end
end
