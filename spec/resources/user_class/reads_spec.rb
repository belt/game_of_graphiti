require 'rails_helper'

RSpec.describe UserClassResource, type: :resource do
  describe 'serialization' do
    let!(:user_class) { create(:user_class) }

    it 'works' do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(user_class.id)
      expect(data.jsonapi_type).to eq('user_classes')
    end
  end

  describe 'filtering' do
    let!(:user_class1) { create(:user_class) }
    let!(:user_class2) { create(:user_class) }

    context 'by id' do
      before do
        params[:filter] = { id: { eq: user_class2.id } }
      end

      it 'works' do
        render
        expect(d.map(&:id)).to eq([user_class2.id])
      end
    end
  end

  describe 'sorting' do
    describe 'by id' do
      let!(:user_class1) { create(:user_class) }
      let!(:user_class2) { create(:user_class) }

      context 'when ascending' do
        before do
          params[:sort] = 'id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            user_class1.id,
            user_class2.id
          ])
        end
      end

      context 'when descending' do
        before do
          params[:sort] = '-id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            user_class2.id,
            user_class1.id
          ])
        end
      end
    end
  end

  describe 'sideloading' do
    # ... your tests ...
  end
end
