require "rails_helper"

RSpec.describe UserClass, type: :model do
  it { is_expected.to have_valid(:name).when("TestName") }
  it { is_expected.not_to have_valid(:name).when(nil, "") }

  it { is_expected.to have_valid(:description).when(Faker::Lorem.paragraph) }
  it { is_expected.not_to have_valid(:description).when(nil, "") }

  it { is_expected.to have_valid(:start_date).when("2021-07-31") }
  it { is_expected.not_to have_valid(:start_date).when(nil, "") }

  # it { should have_valid(:end_date).when("2021-07-31") }
  # it { should_not have_valid(:end_date).when(nil, "") }

  it { is_expected.to have_valid(:timezone).when(-23, -1, 0, 1, 23) }
  it { is_expected.not_to have_valid(:timezone).when(nil, "", 24, -24) }
end
