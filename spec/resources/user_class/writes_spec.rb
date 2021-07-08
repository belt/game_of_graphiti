require "rails_helper"

RSpec.describe UserClassResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "user_classes",
          attributes: attributes_for(:user_class)
        }
      }
    end

    let(:user) do
      FactoryBot.create(:user)
    end

    let(:instance) do
      described_class.build(payload)
    end

    it "works" do
      expect do
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      end.to change(UserClass, :count).by(1)
    end
  end

  describe "updating" do
    let!(:user_class) { create(:user_class) }

    let(:payload) do
      {
        data: {
          id: user_class.id.to_s,
          type: "user_classes",
          attributes: {} # Todo!
        }
      }
    end

    let(:instance) do
      described_class.find(payload)
    end

    xit "works (add some attributes and enable this spec)" do
      expect do
        expect(instance.update).to eq(true)
      end.to change { user_class.reload.updated_at }
      # .and change { user_class.foo }.to('bar') <- example
    end
  end

  describe "destroying" do
    let!(:user_class) { create(:user_class) }

    let(:instance) do
      described_class.find(id: user_class.id)
    end

    it "works" do
      expect do
        expect(instance.destroy).to eq(true)
      end.to change(UserClass, :count).by(-1)
    end
  end
end
