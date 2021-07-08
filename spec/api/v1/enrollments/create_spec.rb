require "rails_helper"

RSpec.describe "enrollments#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/enrollments", payload
  end

  describe "basic create" do
    let(:user) { FactoryBot.create :user }
    let(:user_class) { FactoryBot.create :user_class }
    let(:params) do
      attributes_for(:enrollment, user_id: user.id, user_class_id: user_class.id)
    end
    let(:payload) do
      {
        data: {
          type: "enrollments",
          attributes: params
        }
      }
    end

    it "works" do
      expect(EnrollmentResource).to receive(:build).and_call_original
      expect do
        make_request
        expect(response.status).to eq(201), response.body
      end.to change(Enrollment, :count).by(1)
    end
  end
end
