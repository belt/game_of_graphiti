require 'rails_helper'

RSpec.describe EnrollmentResource, type: :resource do
  let(:user) { FactoryBot.create :user }
  let(:user_class) { FactoryBot.create :user_class }

  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'enrollments',
          attributes: attributes_for(:enrollment, user_id: user.id, user_class_id: user_class.id)
        }
      }
    end

    let(:instance) do
      EnrollmentResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { Enrollment.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:enrollment) { create(:enrollment, user_id: user.id, user_class_id: user_class.id) }

    let(:payload) do
      {
        data: {
          id: enrollment.id.to_s,
          type: 'enrollments',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      EnrollmentResource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { enrollment.reload.updated_at }
      # .and change { enrollment.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:enrollment) { create(:enrollment, user_id: user.id, user_class_id: user_class.id) }

    let(:instance) do
      EnrollmentResource.find(id: enrollment.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { Enrollment.count }.by(-1)
    end
  end
end
