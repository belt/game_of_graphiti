require "rails_helper"

RSpec.describe "user_classes#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/user_classes/#{user_class.id}"
  end

  describe "basic destroy" do
    let!(:user_class) { create(:user_class) }

    it "updates the resource" do
      expect(UserClassResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change(UserClass, :count).by(-1)
      expect { user_class.reload }
        .to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq("meta" => {})
    end
  end
end
