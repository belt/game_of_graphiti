require "rails_helper"

RSpec.describe "enrollments#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/enrollments/#{enrollment.id}"
  end

  describe "basic destroy" do
    let!(:enrollment) { create(:enrollment) }

    it "updates the resource" do
      expect(EnrollmentResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change(Enrollment, :count).by(-1)
      expect { enrollment.reload }
        .to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq("meta" => {})
    end
  end
end
