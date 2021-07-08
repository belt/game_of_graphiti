require "rails_helper"

RSpec.describe EnrollmentResource, type: :resource do
  describe "serialization" do
    let!(:enrollment) { create(:enrollment) }

    it "works" do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(enrollment.id)
      expect(data.jsonapi_type).to eq("enrollments")
    end
  end

  describe "filtering" do
    let!(:enrollment1) { create(:enrollment) }
    let!(:enrollment2) { create(:enrollment) }

    context "by id" do
      before do
        params[:filter] = { id: { eq: enrollment2.id } }
      end

      it "works" do
        render
        expect(d.map(&:id)).to eq([enrollment2.id])
      end
    end
  end

  describe "sorting" do
    describe "by id" do
      let!(:enrollment1) { create(:enrollment) }
      let!(:enrollment2) { create(:enrollment) }

      context "when ascending" do
        before do
          params[:sort] = "id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      enrollment1.id,
                                      enrollment2.id
                                    ])
        end
      end

      context "when descending" do
        before do
          params[:sort] = "-id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      enrollment2.id,
                                      enrollment1.id
                                    ])
        end
      end
    end
  end

  describe "sideloading" do
    # ... your tests ...
  end
end
